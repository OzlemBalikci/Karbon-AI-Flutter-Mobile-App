import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderofmonth_event.freezed.dart';

@freezed
sealed class LeaderofmonthEvent with _$LeaderofmonthEvent {
  const factory LeaderofmonthEvent.started() = LeaderofmonthStarted;
  const factory LeaderofmonthEvent.refreshRequested() =
      LeaderofmonthRefreshRequested;
  const factory LeaderofmonthEvent.loadFailed(String message) =
      LeaderofmonthLoadFailed;
}
