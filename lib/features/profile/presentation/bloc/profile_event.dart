import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_event.freezed.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  // Sayfa açılınca
  const factory ProfileEvent.fetchProfile() = FetchProfile;

  // Sekme değişince
  const factory ProfileEvent.tabChanged(int index) = TabChanged;

  // Bağışla sekmesi açılınca
  const factory ProfileEvent.fetchDonationHistory() = FetchDonationHistory;

  // Bağış yap butonuna basılınca
  const factory ProfileEvent.donateTrees(int treeCount) = DonateTrees;

  // Bağış sonrası state sıfırla (dialog kapanınca)
  const factory ProfileEvent.donateReset() = DonateReset;
}
