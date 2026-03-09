import 'package:freezed_annotation/freezed_annotation.dart';
part 'usefulinfo_event.freezed.dart';

@freezed
sealed class UsefulinfoEvent with _$UsefulinfoEvent {
  const factory UsefulinfoEvent.loadRequested() = UsefulinfoLoadRequested;
}
