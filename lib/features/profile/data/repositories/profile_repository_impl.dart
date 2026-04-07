import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/profile/data/datasources/profile_remote.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._remote);

  final ProfileRemote _remote;

  @override
  Future<Either<Exception, UserProfileEntity>> getProfile() async {
    try {
      return Right(await _remote.getProfile());
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, DonationHistoryEntity>> getDonations() async {
    try {
      return Right(await _remote.getDonations());
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, DonateTreesResultEntity>> donateTrees() async {
    try {
      return Right(await _remote.donateTrees());
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, void>> deleteAccount() async {
    try {
      await _remote.deleteAccount();
      return const Right(null);
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
