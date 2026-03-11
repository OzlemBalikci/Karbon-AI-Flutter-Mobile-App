import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/home/domain/entities/user_rank_entity.dart';

// GET /api/v1/user-results/monthly-leaderboard
class HomeDashboardEntity {
  const HomeDashboardEntity({
    required this.yearlyTreeCount,
    required this.monthlyTreeCount,
    required this.leaders,
    this.currentUserRank,
  });

  final int yearlyTreeCount;
  final int monthlyTreeCount;
  final List<LeaderboardEntity> leaders;
  final UserRankEntity? currentUserRank;

  factory HomeDashboardEntity.fromJson(Map<String, dynamic> json) =>
      HomeDashboardEntity(
        yearlyTreeCount: json['yearlyTreeCount'] as int? ?? 0,
        monthlyTreeCount: json['monthlyTreeCount'] as int? ?? 0,
        leaders: (json['leaders'] as List?)
                ?.map((e) =>
                    LeaderboardEntity.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        currentUserRank: json['currentUserRank'] != null
            ? UserRankEntity.fromJson(
                json['currentUserRank'] as Map<String, dynamic>)
            : null,
      );
}
