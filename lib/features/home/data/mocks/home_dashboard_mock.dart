import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

abstract final class HomeDashboardMock {
  static const HomeDashboardEntity dashboard = HomeDashboardEntity(
    hasCompletedPoll: true,
    globalTarget: GlobalTargetEntity(
      targetTreeCount: 670000,
      donatedTreeCount: 550000,
      remainingTreeCount: 120000,
      progressPercent: 82.1,
    ),
    monthlyTarget: MonthlyTargetEntity(
      month: 4,
      year: 2026,
      targetTreeCount: 67000,
      donatedTreeCount: 55000,
      remainingTreeCount: 12000,
      progressPercent: 82.1,
    ),
    topLeaders: [
      LeaderboardLeaderEntity(
        rank: 1,
        fullName: 'Zeynep Kaya',
        treeCount: 1280,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 2,
        fullName: 'Ahmet Yılmaz',
        treeCount: 940,
        isCurrentUser: false,
      ),
    ],
  );
}
