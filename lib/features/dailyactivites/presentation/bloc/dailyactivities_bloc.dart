import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/branch_step.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivites_event.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_pending_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_entity.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_today_questions_usacase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_pending_status_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_calendar_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/post_answer_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_details_usecase.dart';

@singleton
class DailyActivitiesBloc
    extends Bloc<DailyActivitiesEvent, DailyActivitiesState> {
  DailyActivitiesBloc(
    this._getTodayQuestionsUsecase,
    this._getPendingStatusUsecase,
    this._getCalendarUsecase,
    this._postAnswerUsecase,
    this._getDetailsUsecase,
  ) : super(DailyActivitiesState.initial()) {
    on<DailyActivitiesLoadRequested>(_onLoadRequested);
    on<DailyActivitiesLoadFailed>(_onLoadFailed);
    on<DailyActivitiesQuestionSelected>(_onQuestionSelected);
    on<DailyActivitiesOptionSelected>(_onOptionSelected);
    on<DailyActivitiesPostAnswerRequested>(_onPostAnswerRequested);
    on<DailyActivitiesSuccessDismissed>(_onSuccessDismissed);
    on<DailyActivitiesDetailClosed>(_onDetailClosed);
  }

  final GetTodayQuestionsUsecase _getTodayQuestionsUsecase;
  final GetPendingStatusUsecase _getPendingStatusUsecase;
  final GetCalendarUsecase _getCalendarUsecase;
  final PostAnswerUsecase _postAnswerUsecase;
  final GetDetailsUsecase _getDetailsUsecase;

  Future<void> _onLoadRequested(
    DailyActivitiesLoadRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.loading,
        screenError: null,
      ),
    );

    final pendingResult = await _getPendingStatusUsecase();
    final pending = pendingResult.fold<DailyPendingEntity?>(
      (e) {
        emit(
          state.copyWith(
            screenStatus: DailyActivitiesScreenStatus.error,
            screenError: e.toString(),
          ),
        );
        return null;
      },
      (p) => p,
    );
    if (pending == null) return;
    final questionsResult = await _getTodayQuestionsUsecase();
    final questions = questionsResult.fold<List<DailyQuestionEntity>?>(
      (e) {
        emit(
          state.copyWith(
            screenStatus: DailyActivitiesScreenStatus.error,
            screenError: e.toString(),
          ),
        );
        return null;
      },
      (q) => q,
    );
    if (questions == null) return;
    final now = DateTime.now();
    final calendarResult = await _getCalendarUsecase(
      year: now.year,
      month: now.month,
    );
    final calendar = calendarResult.fold<DailyCalendarEntity?>(
      (e) {
        emit(
          state.copyWith(
            screenStatus: DailyActivitiesScreenStatus.error,
            screenError: e.toString(),
          ),
        );
        return null;
      },
      (c) => c,
    );
    if (calendar == null) return;
    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.success,
        questions: questions,
        pending: pending,
        historyItems: calendar.items,
        totalScore: calendar.totalScore,
      ),
    );
  }

  void _onLoadFailed(
    DailyActivitiesLoadFailed event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.error,
        screenError: event.error,
      ),
    );
  }

  // questionSelected → ilk adımı başlat
  void _onQuestionSelected(DailyActivitiesQuestionSelected event,
      Emitter<DailyActivitiesState> emit) {
    emit(state.copyWith(
      branchPath: [BranchStep(question: event.question)],
      postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
      postAnswerError: null,
      lastPostAnswerResult: null,
      showSuccessDialog: false,
    ));
  }

// optionSelected → aktif adıma seçimi yaz (freeze değil, yeni liste)
  void _onOptionSelected(
      DailyActivitiesOptionSelected event, Emitter<DailyActivitiesState> emit) {
    final path = [...state.branchPath];
    if (path.isEmpty) return;
    final last = path.last;
    final option = last.question.options.firstWhere(
      (o) => o.id == event.optionId,
      orElse: () => throw StateError('option not found'),
    );
    path[path.length - 1] = last.copyWithOption(option);
    emit(state.copyWith(branchPath: path, postAnswerError: null));
  }

  Future<void> _onPostAnswerRequested(
    DailyActivitiesPostAnswerRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    final step = state.branchPath.isEmpty ? null : state.branchPath.last;
    final q = step?.question;
    final selectedOption = step?.selectedOption;
    if (q == null || selectedOption == null) {
      emit(
        state.copyWith(
          postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
          postAnswerError: 'Lütfen bir seçim yapınız.',
        ),
      );
      return;
    }

    final solvedAt = Map<String, DateTime>.from(state.questionSolvedAt)
      ..[q.id] = DateTime.now();

    emit(
      state.copyWith(
        postAnswerStatus: DailyActivitiesPostAnswerStatus.submitting,
        postAnswerError: null,
        questionSolvedAt: solvedAt,
      ),
    );

    final result = await _postAnswerUsecase(
      questionId: q.id,
      optionId: selectedOption.id,
    );

    result.fold(
      (e) => emit(
        state.copyWith(
          postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
          postAnswerError: e.toString(),
          questionSolvedAt: solvedAt,
        ),
      ),
      (answer) {
        final updatedStubs = [
          ...state.answeredQuestionStubs,
          q,
        ];
        if (answer.nextQuestion != null) {
          emit(
            state.copyWith(
              branchPath: [
                ...state.branchPath,
                BranchStep(question: answer.nextQuestion!)
              ],
              postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
              postAnswerError: null,
              showSuccessDialog: false,
            ),
          );
        } else {
          emit(
            state.copyWith(
              postAnswerStatus: DailyActivitiesPostAnswerStatus.success,
              showSuccessDialog: true,
              answeredQuestionStubs: [...state.answeredQuestionStubs, q],
            ),
          );
        }
      },
    );
  }

  Future<void> _onSuccessDismissed(
    DailyActivitiesSuccessDismissed event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        branchPath: [],
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        lastPostAnswerResult: null,
        showSuccessDialog: false,
        postAnswerError: null,
      ),
    );
    add(const DailyActivitiesEvent.loadRequested());
  }

  void _onDetailClosed(
    DailyActivitiesDetailClosed event,
    Emitter<DailyActivitiesState> emit,
  ) {
    if (state.postAnswerStatus == DailyActivitiesPostAnswerStatus.submitting)
      return;
    emit(
      state.copyWith(
        branchPath: [],
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        postAnswerError: null,
      ),
    );
  }
}
