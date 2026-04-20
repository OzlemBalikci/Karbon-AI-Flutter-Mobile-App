import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

part 'profile_state.freezed.dart';

enum AsyncStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();

  bool get canDonate => profile != null && profile!.availableTreeCount > 0;

  const factory ProfileState({
    @Default(AsyncStatus.initial) AsyncStatus profileStatus,
    UserProfileEntity? profile,
    String? profileError,
    @Default(AsyncStatus.initial) AsyncStatus donationHistoryStatus,
    DonationHistoryEntity? donationHistory,
    String? donationHistoryError,
    @Default(AsyncStatus.initial) AsyncStatus donateStatus,
    DonateTreesResultEntity? donateResult,
    String? donateError,
    @Default(0) int selectedTab,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState();
}
