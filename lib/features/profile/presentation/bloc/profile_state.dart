import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/profile/domain/entities/user_profile_entity.dart';

part 'profile_state.freezed.dart';

enum ProfileLoadStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState({
    @Default(ProfileLoadStatus.initial) ProfileLoadStatus loadStatus,
    UserProfileEntity? profile,
    String? error,
    @Default(0) int selectedTabIndex,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState();
}
