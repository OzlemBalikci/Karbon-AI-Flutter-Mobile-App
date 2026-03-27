import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/data/datasources/profile_remote.dart';
import 'package:karbon/features/profile/domain/entities/donate_trees_result_entity.dart';
import 'package:karbon/features/profile/domain/entities/donation_history_entity.dart';
import 'package:karbon/features/profile/domain/entities/user_profile_entity.dart';
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
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, DonationHistoryEntity>> getDonations() async {
    try {
      return Right(await _remote.getDonations());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, DonateTreesResultEntity>> donateTrees() async {
    try {
      return Right(await _remote.donateTrees());
    } on DioException catch (e) {
      final msg = _messageFromDio(e);
      return Left(Exception(msg ?? e.message ?? 'Donate failed'));
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, void>> deleteAccount() async {
    try {
      await _remote.deleteAccount();
      return const Right(null);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  String? _messageFromDio(DioException e) {
    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final errors = data['errors'];
      if (errors is List && errors.isNotEmpty) {
        return errors.first.toString();
      }
    }
    return null;
  }
}
