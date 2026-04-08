import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  LeaderboardRepositoryImpl(this._remote);

  final LeaderboardRemote _remote;

  @override
  Future<Either<Exception, LeaderboardDataEntity>> getLeaderboard({
    required int month,
    required int year,
  }) async {
    try {
      final data = await _remote.getLeaderboard(month: month, year: year);
      return Right(data);
    } on Object catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
