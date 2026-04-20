import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_event.freezed.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchProfile() = FetchProfile;

  const factory ProfileEvent.tabChanged(int index) = TabChanged;

  const factory ProfileEvent.fetchDonationHistory() = FetchDonationHistory;

  const factory ProfileEvent.donateTrees(int treeCount) = DonateTrees;

  const factory ProfileEvent.donateReset() = DonateReset;
}
