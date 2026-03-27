import 'package:dartz/dartz.dart';
import 'package:karbon/features/profile/domain/entities/donate_trees_result_entity.dart';
import 'package:karbon/features/profile/domain/entities/donation_history_entity.dart';
import 'package:karbon/features/profile/domain/entities/user_profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<Exception, UserProfileEntity>> getProfile();
  Future<Either<Exception, DonationHistoryEntity>> getDonations();
  Future<Either<Exception, DonateTreesResultEntity>> donateTrees();
  Future<Either<Exception, void>> deleteAccount();
}
