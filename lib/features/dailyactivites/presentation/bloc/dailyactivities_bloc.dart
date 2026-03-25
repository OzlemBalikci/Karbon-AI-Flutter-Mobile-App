import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';
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
        listStatus: DailyActivitiesListStatus.loading,
        listError: null,
      ),
    );

    final pendingResult = await _getPendingStatusUsecase();
    final pending = pendingResult.fold<DailyPendingEntity?>(
      (e) {
        emit(
          state.copyWith(
            listStatus: DailyActivitiesListStatus.error,
            listError: e.toString(),
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
            listStatus: DailyActivitiesListStatus.error,
            listError: e.toString(),
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
            listStatus: DailyActivitiesListStatus.error,
            listError: e.toString(),
          ),
        );
        return null;
      },
      (c) => c,
    );
    if (calendar == null) return;
    emit(
      state.copyWith(
        listStatus: DailyActivitiesListStatus.success,
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
        listStatus: DailyActivitiesListStatus.error,
        listError: event.error,
      ),
    );
  }

  void _onQuestionSelected(
    DailyActivitiesQuestionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(
      state.copyWith(
        activeQuestion: event.question,
        selectedOptionId: null,
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        postAnswerError: null,
        lastPostAnswerResult: null,
        showSuccessDialog: false,
      ),
    );
  }

  void _onOptionSelected(
    DailyActivitiesOptionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(state.copyWith(
        selectedOptionId: event.optionId, postAnswerError: null));
  }

  Future<void> _onPostAnswerRequested(
    DailyActivitiesPostAnswerRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    final q = state.activeQuestion;
    final optionId = state.selectedOptionId;
    if (q == null || optionId == null || optionId.isEmpty) {
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
      optionId: optionId,
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
        emit(
          state.copyWith(
            postAnswerStatus: DailyActivitiesPostAnswerStatus.success,
            lastPostAnswerResult: answer,
            showSuccessDialog: true,
            answeredQuestionStubs: updatedStubs,
          ),
        );
        // Backend bir sonraki soruyu döndürüyorsa:
        // answer.nextQuestion != null → questionSelected veya state’e göm
      },
    );
  }

  Future<void> _onSuccessDismissed(
    DailyActivitiesSuccessDismissed event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        activeQuestion: null,
        selectedOptionId: null,
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
        activeQuestion: null,
        selectedOptionId: null,
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        postAnswerError: null,
      ),
    );
  }
}
