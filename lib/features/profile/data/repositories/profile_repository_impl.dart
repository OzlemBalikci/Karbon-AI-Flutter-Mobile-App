import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/data/datasources/profile_remote.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/errors/exception_handler.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._remote);

  final ProfileRemote _remote;

  @override
  Future<Either<AppException, UserProfileEntity>> getProfile() async {
    try {
      return Right(await _remote.getProfile());
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, DonationHistoryEntity>> getDonations() async {
    try {
      return Right(await _remote.getDonations());
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, DonateTreesResultEntity>> donateTrees() async {
    try {
      return Right(await _remote.donateTrees());
    } catch (e) {
      return guardLeft(e);
    }
  }
}
