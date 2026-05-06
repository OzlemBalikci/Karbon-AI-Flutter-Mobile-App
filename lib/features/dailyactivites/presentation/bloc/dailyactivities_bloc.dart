import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_today_questions_usacase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_pending_status_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_previous_answers_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/post_answer_usecase.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_event.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';

@injectable
class DailyActivitiesBloc
    extends Bloc<DailyActivitiesEvent, DailyActivitiesState> {
  DailyActivitiesBloc(
    this._getTodayQuestions,
    this._getPendingStatus,
    this._getPreviousAnswers,
    this._postAnswers,
  ) : super(DailyActivitiesState.initial()) {
    on<DailyActivitiesLoadRequested>(_onLoadRequested);
    on<DailyActivitiesQuestionSelected>(_onQuestionSelected);
    on<DailyActivitiesOptionSelected>(_onOptionSelected);
    on<DailyActivitiesBranchStepReopened>(_onBranchStepReopened);
    on<DailyActivitiesPostAnswerRequested>(_onPostAnswerRequested);
    on<DailyActivitiesSuccessDismissed>(_onSuccessDismissed);
    on<DailyActivitiesDetailClosed>(_onDetailClosed);
  }

  final GetTodayQuestionsUseCase _getTodayQuestions;
  final GetPendingStatusUseCase _getPendingStatus;
  final GetPreviousAnswersUseCase _getPreviousAnswers;
  final PostAnswersUseCase _postAnswers;

  Future<void> _onLoadRequested(
    DailyActivitiesLoadRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(state.copyWith(
      status: DailyActivitiesStatus.loading,
      screenError: null,
    ));

    final questionsResult = await _getTodayQuestions();
    if (emit.isDone) return;

    final questions = questionsResult.fold<List<DailyQuestionEntity>?>(
      (e) {
        emit(state.copyWith(
          status: DailyActivitiesStatus.failure,
          screenError: e.toString(),
        ));
        return null;
      },
      (data) => data,
    );
    if (questions == null || emit.isDone) return;

    final pendingResult = await _getPendingStatus();
    if (emit.isDone) return;

    final pending = pendingResult.fold<DailyPendingEntity?>(
      (e) {
        emit(state.copyWith(
          status: DailyActivitiesStatus.failure,
          screenError: e.toString(),
        ));
        return null;
      },
      (data) => data,
    );
    if (pending == null || emit.isDone) return;

    final previousAnswersResult = await _getPreviousAnswers();
    if (emit.isDone) return;

    final previousAnswers =
        previousAnswersResult.fold<List<DailyPreviousAnswersByDateEntity>?>(
      (e) {
        emit(state.copyWith(
          status: DailyActivitiesStatus.failure,
          screenError: e.toString(),
        ));
        return null;
      },
      (data) => data,
    );
    if (previousAnswers == null || emit.isDone) return;

    final referencedIds = questions
        .expand((q) => q.options)
        .map((o) => o.nextQuestionId)
        .whereType<String>()
        .toSet();

    final rootQuestions = questions
        .where((q) => !referencedIds.contains(q.id))
        .toList()
      ..sort((a, b) => a.displayOrder.compareTo(b.displayOrder));

    emit(state.copyWith(
      status: DailyActivitiesStatus.success,
      allQuestions: questions,
      questions: rootQuestions,
      pending: pending,
      previousAnswers: previousAnswers,
      screenError: null,
    ));
  }

  void _onQuestionSelected(
    DailyActivitiesQuestionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(state.copyWith(
      selectedQuestion: event.question,
      visibleSteps: [event.question],
      selectedOptions: {},
    ));
  }

  void _onOptionSelected(
    DailyActivitiesOptionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    final option = event.option;
    final currentStep = state.visibleSteps.last;

    final updatedOptions = Map<String, DailyQuestionOptionEntity>.from(
      state.selectedOptions,
    )..[currentStep.id] = option;

    List<DailyQuestionEntity> updatedSteps = [...state.visibleSteps];

    if (option.nextQuestionId != null && option.nextQuestionId!.isNotEmpty) {
      final next = state.allQuestions.firstWhere(
        (q) => q.id == option.nextQuestionId,
      );
      updatedSteps = [...updatedSteps, next];
    }

    emit(state.copyWith(
      visibleSteps: updatedSteps,
      selectedOptions: updatedOptions,
    ));
  }

  void _onBranchStepReopened(
    DailyActivitiesBranchStepReopened event,
    Emitter<DailyActivitiesState> emit,
  ) {
    final trimmedSteps = state.visibleSteps.sublist(0, event.stepIndex + 1);

    final validIds = trimmedSteps.map((q) => q.id).toSet();
    final trimmedOptions = Map<String, DailyQuestionOptionEntity>.from(
      state.selectedOptions,
    )..removeWhere((id, _) => !validIds.contains(id));

    emit(state.copyWith(
      visibleSteps: trimmedSteps,
      selectedOptions: trimmedOptions,
    ));
  }

  Future<void> _onPostAnswerRequested(
    DailyActivitiesPostAnswerRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    if (!state.canSubmit) return;

    emit(state.copyWith(
      postStatus: DailyActivitiesPostStatus.submitting,
      postError: null,
    ));

    final answers = state.selectedOptions.entries
        .map((e) => DailySelectedAnswerEntity(
              questionId: e.key,
              selectedOptionId: e.value.id,
            ))
        .toList();

    final result = await _postAnswers(answers: answers);

    result.fold(
      (e) => emit(state.copyWith(
        postStatus: DailyActivitiesPostStatus.error,
        postError: e.toString(),
      )),
      (data) => emit(state.copyWith(
        postStatus: DailyActivitiesPostStatus.success,
        lastResult: data,
        showSuccessDialog: true,
        postError: null,
      )),
    );
  }

  Future<void> _onSuccessDismissed(
    DailyActivitiesSuccessDismissed event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(state.copyWith(showSuccessDialog: false));
    add(const DailyActivitiesEvent.loadRequested());
    _resetDetail(emit);
  }

  void _onDetailClosed(
    DailyActivitiesDetailClosed event,
    Emitter<DailyActivitiesState> emit,
  ) {
    _resetDetail(emit);
  }

  void _resetDetail(Emitter<DailyActivitiesState> emit) {
    emit(state.copyWith(
      selectedQuestion: null,
      visibleSteps: [],
      selectedOptions: {},
      postStatus: DailyActivitiesPostStatus.idle,
      postError: null,
      showSuccessDialog: false,
    ));
  }
}
