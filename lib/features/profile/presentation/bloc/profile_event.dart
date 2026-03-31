import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_event.freezed.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadRequested() = ProfileLoadRequested;

  const factory ProfileEvent.profileTabChanged(int index) = ProfileTabChanged;
}
