import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

part 'carbon_calculate_state.freezed.dart';

enum CarbonCalculateStatus {
  initial,
  loading,
  success,
  submitting,
  failure,
}

@freezed
abstract class CarbonCalculateState with _$CarbonCalculateState {
  const CarbonCalculateState._();

  const factory CarbonCalculateState({
    @Default(CarbonCalculateStatus.initial) CarbonCalculateStatus status,
    @Default(0) int currentStep,
    String? pollSetId,
    @Default('') String pollDescription,
    @Default([]) List<PollQuestionEntity> questions,
    @Default({}) Map<String, String> answers,
    String? error,
    @Default(false) bool goToHomeRequested,
    PollSubmissionResultEntity? submissionResult,
  }) = _CarbonCalculateState;

  factory CarbonCalculateState.initial() => const CarbonCalculateState();

  CarbonCalculatePhase get phase {
    if (currentStep == 0) return const CarbonInfoPhase();
    if (currentStep >= 1 && currentStep <= lastQuestionStep) {
      return CarbonQuestionPhase(questionIndex: currentStep - 1);
    }
    return const CarbonResultPhase();
  }

  int get maxStep => questions.isEmpty ? 14 : questions.length + 1;

  int get lastQuestionStep => questions.isEmpty ? 13 : questions.length;

  bool get isLastQuestionStep => currentStep == lastQuestionStep;
  bool get isResultStep => currentStep == maxStep;
  bool get isLastStep => currentStep >= maxStep;
  bool get canGoBack => currentStep > 0;
  int get questionIndex => currentStep - 1;

  bool get isCurrentQuestionAnswered {
    if (phase is! CarbonQuestionPhase) return false;
    final idx = questionIndex;
    if (idx < 0 || idx >= questions.length) return false;
    return answers.containsKey(questions[idx].id);
  }

  List<PollAnswerItemEntity> get answerItems => answers.entries
      .map((e) => PollAnswerItemEntity(questionId: e.key, optionId: e.value))
      .toList();
}
