import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

part 'profile_state.freezed.dart';

enum ProfileStatus { initial, loading, success, error }

enum DonationHistoryStatus { initial, loading, success, error }

enum DonateTreesStatus { initial, loading, success, error }

@freezed
abstract class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    @Default(0) int selectedTab,
    @Default(ProfileStatus.initial) ProfileStatus profileStatus,
    UserProfileEntity? profile,
    @Default(DonationHistoryStatus.initial)
    DonationHistoryStatus donationHistoryStatus,
    DonationHistoryEntity? donationHistory,
    @Default(DonateTreesStatus.initial) DonateTreesStatus donateStatus,
    DonateTreesResultEntity? donateResult,
    String? profileError,
    String? donationHistoryError,
    String? donateError,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(selectedTab: 0);
}
