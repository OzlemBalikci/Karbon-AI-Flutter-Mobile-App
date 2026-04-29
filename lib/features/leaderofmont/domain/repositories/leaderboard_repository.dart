import 'package:dartz/dartz.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

abstract class LeaderboardRepository {
  Future<Either<Exception, LeaderboardDataEntity>> getLeaderboard();
}
