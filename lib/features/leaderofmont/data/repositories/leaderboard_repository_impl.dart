import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_data_entity.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository_impl.dart';
import 'package:dartz/dartz.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  LeaderboardRepositoryImpl(this._remote);
  final LeaderboardRemote _remote;

  @override
  Future<Either<Exception, LeaderboardDataEntity>>
      getLeaderboardDataEntity() async {
    try {
      final data = await _remote.getLeaderboardData();
      return Right(data);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
