import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_event.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_state.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@injectable
class CarbonCalculateBloc
    extends Bloc<CarbonCalculateEvent, CarbonCalculateState> {
  CarbonCalculateBloc(this._carbonCalculateRepository)
      : super(CarbonCalculateState.initial()) {
    on<CarbonCalculateLoadRequested>(_onLoadRequested);
    on<CarbonCalculateLoadFailed>(_onLoadFailed);
    on<CarbonCalculateNextPressed>(_onNextPressed);
    on<CarbonCalculateBackPressed>(_onBackPressed);
    on<CarbonCalculateAnswerSelected>(_onAnswerSelected);
    on<CarbonCalculateFinishPressed>(_onFinishPressed);
    on<CarbonCalculateCalculateAgainPressed>(_onCalculateAgainPressed);
    on<CarbonCalculateGoToHomePressed>(_onGoToHomePressed);
  }

  final CarbonCalculateRepository _carbonCalculateRepository;

  void _onLoadRequested(CarbonCalculateLoadRequested event,
      Emitter<CarbonCalculateState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _carbonCalculateRepository.getActivePoll();
    result.fold(
      (e) => emit(state.copyWith(isLoading: false, error: e.toString())),
      (poll) {
        final questions = poll.questions
            .map((q) => {
                  'question': q.text,
                  'options': q.options
                      .map((o) => {
                            'value': (o.carbonValue ?? 0).toInt(),
                            'label': o.text,
                          })
                      .toList(),
                  'infoText': poll.description,
                })
            .toList();
        emit(state.copyWith(isLoading: false, questions: questions));
      },
    );
  }

  void _onLoadFailed(
      CarbonCalculateLoadFailed event, Emitter<CarbonCalculateState> emit) {
    emit(state.copyWith(isLoading: false, error: event.error));
  }

  void _onNextPressed(
      CarbonCalculateNextPressed event, Emitter<CarbonCalculateState> emit) {
    if (state.currentStep >= state.maxStep) return;
    if (state.phase is CarbonQuestionPhase && !state.isCurrentQuestionAnswered)
      return;
    emit(state.copyWith(currentStep: state.currentStep + 1));
  }

  void _onBackPressed(
      CarbonCalculateBackPressed event, Emitter<CarbonCalculateState> emit) {
    if (!state.canGoBack) return;
    emit(state.copyWith(currentStep: state.currentStep - 1));
  }

  void _onAnswerSelected(
      CarbonCalculateAnswerSelected event, Emitter<CarbonCalculateState> emit) {
    final newAnswers = Map<int, dynamic>.from(state.answers)
      ..[event.questionIndex] = event.value;
    emit(state.copyWith(answers: newAnswers));
  }

  void _onFinishPressed(
      CarbonCalculateFinishPressed event, Emitter<CarbonCalculateState> emit) {
    if (!state.isCurrentQuestionAnswered) return;
    if (state.currentStep == state.lastQuestionStep) {
      emit(state.copyWith(currentStep: state.maxStep));
      return;
    }
    if (state.isLastStep) return;
  }

  void _onCalculateAgainPressed(
    CarbonCalculateCalculateAgainPressed event,
    Emitter<CarbonCalculateState> emit,
  ) {
    emit(state.copyWith(currentStep: 1, answers: {}));
  }

  void _onGoToHomePressed(
    CarbonCalculateGoToHomePressed event,
    Emitter<CarbonCalculateState> emit,
  ) {
    emit(state.copyWith(goToHomeRequested: true));
    // İsteğe bağlı: hemen sonra false yapmak (sayfa dinleyip yönlendirecek)
    // emit(state.copyWith(goToHomeRequested: false));
  }
}
