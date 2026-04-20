import 'package:dartz/dartz.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

abstract class ProfileRepository {
  Future<Either<Exception, UserProfileEntity>> getProfile();

  Future<Either<Exception, DonationHistoryEntity>> getDonations();

  Future<Either<Exception, DonateTreesResultEntity>> donateTrees();
}
