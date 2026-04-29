import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/errors/exception_handler.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  LeaderboardRepositoryImpl(this._remote);

  final LeaderboardRemote _remote;

  @override
  Future<Either<AppException, LeaderboardDataEntity>> getLeaderboard() async {
    try {
      final data = await _remote.getLeaderboard();
      return Right(data);
    } catch (e) {
      return guardLeft(e);
    }
  }
}
