import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

abstract class ProfileRemote {
  Future<UserProfileEntity> getProfile();

  Future<DonationHistoryEntity> getDonations();

  Future<DonateTreesResultEntity> donateTrees();

  /// Geliştirme için; `false` iken gerçek HTTP kullanılır.
  static const bool useMockProfile = true;
}
