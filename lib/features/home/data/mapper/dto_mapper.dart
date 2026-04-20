import 'package:karbon/features/home/data/dtos/global_target_dto.dart';
import 'package:karbon/features/home/data/dtos/home_dashboard_dto.dart';
import 'package:karbon/features/home/data/dtos/home_top_leader_dto.dart';
import 'package:karbon/features/home/data/dtos/monthly_target_dto.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

class HomeMapper {
  HomeMapper._();

  static GlobalTargetEntity toGlobalTargetEntity(GlobalTargetDto dto) =>
      GlobalTargetEntity(
        targetTreeCount: dto.targetTreeCount,
        donatedTreeCount: dto.donatedTreeCount,
        remainingTreeCount: dto.remainingTreeCount,
        progressPercent: dto.progressPercent,
      );

  static MonthlyTargetEntity toMonthlyTargetEntity(MonthlyTargetDto dto) =>
      MonthlyTargetEntity(
        month: dto.month,
        year: dto.year,
        targetTreeCount: dto.targetTreeCount,
        donatedTreeCount: dto.donatedTreeCount,
        remainingTreeCount: dto.remainingTreeCount,
        progressPercent: dto.progressPercent,
      );

  static LeaderboardLeaderEntity toLeaderboardLeaderEntity(HomeTopLeaderDto dto) =>
      LeaderboardLeaderEntity(
        rank: dto.rank,
        fullName: dto.fullName,
        treeCount: dto.treeCount,
        isCurrentUser: dto.isCurrentUser,
      );

  static HomeDashboardEntity toHomeDashboardEntity(HomeDashboardDto dto) =>
      HomeDashboardEntity(
        hasCompletedPoll: dto.hasCompletedPoll,
        globalTarget: dto.globalTarget != null
            ? toGlobalTargetEntity(dto.globalTarget!)
            : null,
        monthlyTarget: dto.monthlyTarget != null
            ? toMonthlyTargetEntity(dto.monthlyTarget!)
            : null,
        topLeaders: dto.topLeaders?.map(toLeaderboardLeaderEntity).toList(),
      );
}
