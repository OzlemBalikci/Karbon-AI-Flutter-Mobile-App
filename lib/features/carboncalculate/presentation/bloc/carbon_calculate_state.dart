import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';

part 'carbon_calculate_state.freezed.dart';

enum CarbonCalculateStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
abstract class CarbonCalculateState with _$CarbonCalculateState {
  const CarbonCalculateState._();

  const factory CarbonCalculateState({
    @Default(0) int currentStep,
    @Default({}) Map<int, dynamic> answers,
    @Default(false) bool isLoading,
    String? error,
    @Default([]) List<Map<String, dynamic>> questions,
    @Default(false) bool goToHomeRequested,
  }) = _CarbonCalculateState;

  factory CarbonCalculateState.initial() => const CarbonCalculateState();

  CarbonCalculatePhase get phase {
    if (currentStep == 0) return const CarbonInfoPhase();
    if (currentStep >= 1 && currentStep <= lastQuestionStep) {
      return CarbonQuestionPhase(questionIndex: currentStep - 1);
    }
    return const CarbonResultPhase();
  }

  /// 0=info, 1..N=sorular, N+1=sonuç
  int get maxStep => questions.isEmpty ? 14 : questions.length + 1;

  int get lastQuestionStep => questions.isEmpty ? 13 : questions.length;

  bool get isLastQuestionStep => currentStep == lastQuestionStep;
  bool get isResultStep => currentStep == maxStep;
  bool get isLastStep => currentStep >= maxStep;
  bool get canGoBack => currentStep > 0;
  int get questionIndex => currentStep - 1;
  bool get isCurrentQuestionAnswered => answers.containsKey(questionIndex);
}
