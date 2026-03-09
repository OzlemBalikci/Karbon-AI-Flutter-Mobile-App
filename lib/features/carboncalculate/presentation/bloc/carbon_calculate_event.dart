import 'package:freezed_annotation/freezed_annotation.dart';

part 'carbon_calculate_event.freezed.dart';

@freezed
sealed class CarbonCalculateEvent with _$CarbonCalculateEvent {
  const factory CarbonCalculateEvent.loadRequested() =
      CarbonCalculateLoadRequested;
  const factory CarbonCalculateEvent.loadFailed(String error) =
      CarbonCalculateLoadFailed;
  const factory CarbonCalculateEvent.nextPressed() = CarbonCalculateNextPressed;
  const factory CarbonCalculateEvent.backPressed() = CarbonCalculateBackPressed;
  const factory CarbonCalculateEvent.finishPressed() =
      CarbonCalculateFinishPressed;
  const factory CarbonCalculateEvent.calculateAgainPressed() =
      CarbonCalculateCalculateAgainPressed;
  const factory CarbonCalculateEvent.goToHomePressed() =
      CarbonCalculateGoToHomePressed;
  const factory CarbonCalculateEvent.answerSelected(
      {required int questionIndex,
      required dynamic value}) = CarbonCalculateAnswerSelected;
}
