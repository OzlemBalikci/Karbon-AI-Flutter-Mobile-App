// lib/features/leaderofmont/domain/entities/leaderboard_data_entity.dart

import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_leader_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/current_user_rank_entity.dart';

class LeaderboardDataEntity {
  const LeaderboardDataEntity({
    required this.leaders,
    required this.yearlyTreeCount,
    required this.monthlyTreeCount,
    this.currentUserRank,
  });

  final List<LeaderboardLeaderEntity> leaders;
  final CurrentUserRankEntity? currentUserRank;
  final int yearlyTreeCount;
  final int monthlyTreeCount;
}
