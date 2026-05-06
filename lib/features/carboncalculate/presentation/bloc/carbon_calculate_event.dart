import 'package:freezed_annotation/freezed_annotation.dart';

part 'carbon_calculate_event.freezed.dart';

@freezed
sealed class CarbonCalculateEvent with _$CarbonCalculateEvent {
  const factory CarbonCalculateEvent.loadRequested() =
      CarbonCalculateLoadRequested;
  const factory CarbonCalculateEvent.nextPressed() = CarbonCalculateNextPressed;
  const factory CarbonCalculateEvent.backPressed() = CarbonCalculateBackPressed;
  const factory CarbonCalculateEvent.answerSelected({
    required String questionId,
    required String optionId,
  }) = CarbonCalculateAnswerSelected;
  const factory CarbonCalculateEvent.saveDraftRequested() =
      CarbonCalculateSaveDraftRequested;
  const factory CarbonCalculateEvent.submitAnswersRequested() =
      CarbonCalculateSubmitAnswersRequested;
  const factory CarbonCalculateEvent.calculateAgainPressed() =
      CarbonCalculateCalculateAgainPressed;
  const factory CarbonCalculateEvent.goToHomePressed() =
      CarbonCalculateGoToHomePressed;
}
