import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = HomeStarted;
  const factory HomeEvent.surveyCompleted({
    required double carbonResult,
  }) = HomeSurveyCompleted;
  const factory HomeEvent.refreshRequested() = HomeRefreshRequested;
  const factory HomeEvent.returnedFromCarbonCalculate() =
      HomeReturnedFromCarbonCalculate;
  const factory HomeEvent.loadFailed(String message) = HomeLoadFailed;
}
