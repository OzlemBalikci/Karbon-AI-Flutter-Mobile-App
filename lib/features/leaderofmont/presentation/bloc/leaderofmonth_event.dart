import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderofmonth_event.freezed.dart';

@freezed
sealed class LeaderofmonthEvent with _$LeaderofmonthEvent {
  const factory LeaderofmonthEvent.fetchRequested() =
      LeaderofmonthFetchRequested;
  const factory LeaderofmonthEvent.refreshRequested() =
      LeaderofmonthRefreshRequested;
}
