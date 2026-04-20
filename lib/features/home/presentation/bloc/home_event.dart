import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchRequested() = HomeFetchRequested;
  const factory HomeEvent.refreshRequested() = HomeRefreshRequested;
  const factory HomeEvent.pollCompleted() = HomePollCompleted;
}
