import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/usecases/get_calendar_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_event.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_today_questions_usacase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_pending_status_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_previous_answers_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/post_answer_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/checksession_usecase.dart';

@injectable
class DailyActivitiesBloc
    extends Bloc<DailyActivitiesEvent, DailyActivitiesState> {
  DailyActivitiesBloc(
    this._getTodayQuestionsUsecase,
    this._getPendingStatusUsecase,
    this._getCalendarUsecase,
    this._postAnswerUsecase,
    this._checkSessionUseCase,
    this._getPreviousAnswersUsecase,
  ) : super(DailyActivitiesState.initial()) {
    on<DailyActivitiesLoadRequested>(_onLoadRequested);
    on<DailyActivitiesQuestionSelected>(_onQuestionSelected);
    on<DailyActivitiesOptionSelected>(_onOptionSelected);
    on<DailyActivitiesBranchStepReopened>(_onBranchStepReopened);
    on<DailyActivitiesPostAnswerRequested>(_onPostAnswerRequested);
    on<DailyActivitiesSuccessDismissed>(_onSuccessDismissed);
    on<DailyActivitiesDetailClosed>(_onDetailClosed);
  }

  final GetTodayQuestionsUsecase _getTodayQuestionsUsecase;
  final GetPendingStatusUsecase _getPendingStatusUsecase;
  final GetCalendarUsecase _getCalendarUsecase;
  final PostAnswerUsecase _postAnswerUsecase;
  final CheckSessionUseCase _checkSessionUseCase;
  final GetPreviousAnswersUsecase _getPreviousAnswersUsecase;

  void _emitLoadFailure(
    Emitter<DailyActivitiesState> emit,
    Object error,
  ) {
    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.failure,
        screenError: error.toString(),
      ),
    );
  }

  Future<T?> _unwrapOrFail<T>(
    Either<Exception, T> result,
    Emitter<DailyActivitiesState> emit,
  ) async {
    return result.fold(
      (e) {
        _emitLoadFailure(emit, e);
        return null;
      },
      (v) => v,
    );
  }

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

    final pending = await _unwrapOrFail(
      await _getPendingStatusUsecase(),
      emit,
    );
    if (pending == null) return;

    final questions = await _unwrapOrFail(
      await _getTodayQuestionsUsecase(),
      emit,
    );
    if (questions == null) return;

    final now = DateTime.now();
    final calendar = await _unwrapOrFail(
      await _getCalendarUsecase(year: now.year, month: now.month),
      emit,
    );
    if (calendar == null) return;

    final prevAnswers = (await _getPreviousAnswersUsecase()).fold(
      (_) => <DailyPreviousAnswersByDateEntity>[],
      (a) => a,
    );

    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.success,
        questions: questions,
        pending: pending,
        historyItems: calendar.items,
        totalScore: calendar.totalScore,
        previousAnswers: prevAnswers,
      ),
    );
  }

  void _onQuestionSelected(
    DailyActivitiesQuestionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(
      state.copyWith(
        branchPath: [BranchStep(question: event.question)],
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        postAnswerError: null,
        lastPostAnswerResult: null,
        showSuccessDialog: false,
      ),
    );
  }

  DailyQuestionEntity? _questionById(String id) {
    for (final q in state.questions) {
      if (q.id == id) return q;
    }
    return null;
  }

  void _onOptionSelected(
    DailyActivitiesOptionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    final path = [...state.branchPath];
    if (path.isEmpty) return;

    final last = path.last;
    DailyQuestionOptionEntity? option;
    for (final o in last.question.options) {
      if (o.id == event.optionId) {
        option = o;
        break;
      }
    }
    if (option == null) return;

    path[path.length - 1] = last.copyWithOption(option);

    final nextId = option.nextQuestionId;
    if (nextId != null && nextId.isNotEmpty) {
      final nextQuestion = _questionById(nextId);
      if (nextQuestion != null && !path.any((s) => s.question.id == nextId)) {
        path.add(BranchStep(question: nextQuestion));
      }
    }

    emit(state.copyWith(branchPath: path, postAnswerError: null));
  }

  void _onBranchStepReopened(
    DailyActivitiesBranchStepReopened event,
    Emitter<DailyActivitiesState> emit,
  ) {
    if (state.postAnswerStatus == DailyActivitiesPostAnswerStatus.submitting) {
      return;
    }
    final path = state.branchPath;
    if (path.isEmpty) return;
    final i = event.stepIndex;
    if (i < 0 || i >= path.length || !path[i].isAnswered) return;

    final head = path.take(i).toList();
    emit(
      state.copyWith(
        branchPath: [...head, BranchStep(question: path[i].question)],
        postAnswerError: null,
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
      ),
    );
  }

  Future<void> _onPostAnswerRequested(
    DailyActivitiesPostAnswerRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    final path = state.branchPath;
    if (path.isEmpty || !path.last.isAnswered) {
      emit(
        state.copyWith(
          postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
          postAnswerError: path.isEmpty
              ? 'Lütfen bir seçim yapınız.'
              : 'Lütfen tüm soruları cevaplayınız.',
        ),
      );
      return;
    }

    final answeredSteps = path.where((s) => s.isAnswered).toList();

    final sessionResult = await _checkSessionUseCase();
    final userId = sessionResult.fold<String?>(
      (_) => null,
      (u) => u?.id,
    );
    if (userId == null || userId.isEmpty) {
      emit(
        state.copyWith(
          postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
          postAnswerError: 'Oturum bulunamadı.',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        postAnswerStatus: DailyActivitiesPostAnswerStatus.submitting,
        postAnswerError: null,
      ),
    );

    DailyAnswerResultEntity? lastAnswer;
    for (final step in answeredSteps) {
      final result = await _postAnswerUsecase(
        questionId: step.question.id,
        selectedOptionId: step.selectedOption!.id,
        userId: userId,
      );
      final answer = result.fold<DailyAnswerResultEntity?>(
        (e) {
          emit(
            state.copyWith(
              postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
              postAnswerError: e.toString(),
            ),
          );
          return null;
        },
        (a) => a,
      );
      if (answer == null) return;
      lastAnswer = answer;
    }

    final answer = lastAnswer!;
    final showPointsDialog =
        answer.isFlowCompleted && answer.nextQuestion == null;

    emit(
      state.copyWith(
        postAnswerStatus: DailyActivitiesPostAnswerStatus.success,
        showSuccessDialog: showPointsDialog,
        lastPostAnswerResult: answer,
      ),
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
    if (state.postAnswerStatus == DailyActivitiesPostAnswerStatus.submitting) {
      return;
    }
    emit(
      state.copyWith(
        branchPath: [],
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        postAnswerError: null,
      ),
    );
  }
}
