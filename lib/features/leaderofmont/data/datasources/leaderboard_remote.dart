import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

abstract class LeaderboardRemote {
  Future<LeaderboardDataEntity> getLeaderboard();
}
