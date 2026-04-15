import 'package:dartz/dartz.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

/// Profil veri sözleşmesi — bkz. [project_docs/profile.md].
abstract class ProfileRepository {
  /// GET `/api/v1/users/me/profile`
  Future<Either<Exception, UserProfileEntity>> getProfile();

  /// GET `/api/v1/users/me/donations`
  Future<Either<Exception, DonationHistoryEntity>> getDonations();

  /// POST `/api/v1/users/me/donations`
  Future<Either<Exception, DonateTreesResultEntity>> donateTrees();
}
