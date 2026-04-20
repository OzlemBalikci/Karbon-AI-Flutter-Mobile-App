import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_event.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_state.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@injectable
class CarbonCalculateBloc
    extends Bloc<CarbonCalculateEvent, CarbonCalculateState> {
  CarbonCalculateBloc(this._repo) : super(CarbonCalculateState.initial()) {
    on<CarbonCalculateLoadRequested>(_onLoadRequested);
    on<CarbonCalculateNextPressed>(_onNextPressed);
    on<CarbonCalculateBackPressed>(_onBackPressed);
    on<CarbonCalculateAnswerSelected>(_onAnswerSelected);
    on<CarbonCalculateSaveDraftRequested>(_onSaveDraftRequested);
    on<CarbonCalculateSubmitAnswersRequested>(_onSubmitAnswersRequested);
    on<CarbonCalculateCalculateAgainPressed>(_onCalculateAgainPressed);
    on<CarbonCalculateGoToHomePressed>(_onGoToHomePressed);
  }

  final CarbonCalculateRepository _repo;

  Future<void> _onLoadRequested(
    CarbonCalculateLoadRequested event,
    Emitter<CarbonCalculateState> emit,
  ) async {
    emit(state.copyWith(status: CarbonCalculateStatus.loading, error: null));
    final result = await _repo.getActivePoll();
    result.fold(
      (e) => emit(state.copyWith(
        status: CarbonCalculateStatus.failure,
        error: e.toString(),
      )),
      (poll) {
        // Taslak varsa (selectedOptionId dolu) kaldığı yerden devam ettir.
        final restoredAnswers = <String, String>{};
        for (final q in poll.questions) {
          if (q.selectedOptionId != null) {
            restoredAnswers[q.id] = q.selectedOptionId!;
          }
        }
        emit(state.copyWith(
          status: CarbonCalculateStatus.success,
          pollSetId: poll.pollSetId,
          pollDescription: poll.description ?? '',
          questions: poll.questions,
          answers: restoredAnswers,
        ));
      },
    );
  }

  void _onNextPressed(
    CarbonCalculateNextPressed event,
    Emitter<CarbonCalculateState> emit,
  ) {
    if (state.currentStep >= state.maxStep) return;
    if (state.phase is CarbonQuestionPhase &&
        !state.isCurrentQuestionAnswered) {
      return;
    }
    if (state.currentStep == 0 && state.questions.isEmpty) return;
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }

  void _onBackPressed(
    CarbonCalculateBackPressed event,
    Emitter<CarbonCalculateState> emit,
  ) {
    if (!state.canGoBack) return;
    emit(state.copyWith(currentStep: state.currentStep - 1));
  }

  void _onAnswerSelected(
    CarbonCalculateAnswerSelected event,
    Emitter<CarbonCalculateState> emit,
  ) {
    final newAnswers = Map<String, String>.from(state.answers)
      ..[event.questionId] = event.optionId;
    emit(state.copyWith(answers: newAnswers));
    add(const CarbonCalculateEvent.saveDraftRequested());
  }

  Future<void> _onSaveDraftRequested(
    CarbonCalculateSaveDraftRequested event,
    Emitter<CarbonCalculateState> emit,
  ) async {
    final pollSetId = state.pollSetId;
    if (pollSetId == null || state.answers.isEmpty) return;

    final result = await _repo.savePollDraft(
      pollSetId: pollSetId,
      answers: state.answerItems,
    );
    result.fold(
      (e) => emit(state.copyWith(error: e.toString())),
      (_) {},
    );
  }

  Future<void> _onSubmitAnswersRequested(
    CarbonCalculateSubmitAnswersRequested event,
    Emitter<CarbonCalculateState> emit,
  ) async {
    if (!state.isCurrentQuestionAnswered) return;
    final pollSetId = state.pollSetId;
    if (pollSetId == null) return;

    emit(state.copyWith(status: CarbonCalculateStatus.submitting, error: null));
    final result = await _repo.submitPollAnswers(
      pollSetId: pollSetId,
      answers: state.answerItems,
    );
    result.fold(
      (e) => emit(state.copyWith(
        status: CarbonCalculateStatus.failure,
        error: e.toString(),
      )),
      (submissionResult) => emit(state.copyWith(
        status: CarbonCalculateStatus.success,
        currentStep: state.maxStep,
        submissionResult: submissionResult,
      )),
    );
  }

  void _onCalculateAgainPressed(
    CarbonCalculateCalculateAgainPressed event,
    Emitter<CarbonCalculateState> emit,
  ) {
    emit(state.copyWith(
      currentStep: 1,
      answers: {},
      submissionResult: null,
      error: null,
    ));
  }

  void _onGoToHomePressed(
    CarbonCalculateGoToHomePressed event,
    Emitter<CarbonCalculateState> emit,
  ) {
    emit(state.copyWith(goToHomeRequested: true));
  }
}
