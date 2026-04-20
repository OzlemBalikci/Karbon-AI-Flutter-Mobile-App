import 'package:equatable/equatable.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

/// GET `/api/v1/user-results/home` → `data.globalTarget`
class GlobalTargetEntity extends Equatable {
  const GlobalTargetEntity({
    required this.targetTreeCount,
    required this.donatedTreeCount,
    required this.remainingTreeCount,
    required this.progressPercent,
  });

  final int targetTreeCount;
  final int donatedTreeCount;
  final int remainingTreeCount;
  final double progressPercent;

  @override
  List<Object?> get props =>
      [targetTreeCount, donatedTreeCount, remainingTreeCount, progressPercent];
}

/// GET `/api/v1/user-results/home` → `data.monthlyTarget`
class MonthlyTargetEntity extends Equatable {
  const MonthlyTargetEntity({
    required this.month,
    required this.year,
    required this.targetTreeCount,
    required this.donatedTreeCount,
    required this.remainingTreeCount,
    required this.progressPercent,
  });

  final int month;
  final int year;
  final int targetTreeCount;
  final int donatedTreeCount;
  final int remainingTreeCount;
  final double progressPercent;

  @override
  List<Object?> get props => [
        month,
        year,
        targetTreeCount,
        donatedTreeCount,
        remainingTreeCount,
        progressPercent
      ];
}

/// GET `/api/v1/user-results/home` yanıtındaki `data` gövdesi (`project_docs/home.md`).
class HomeDashboardEntity extends Equatable {
  const HomeDashboardEntity({
    required this.hasCompletedPoll,
    this.globalTarget,
    this.monthlyTarget,
    this.topLeaders,
  });

  final bool hasCompletedPoll;
  final GlobalTargetEntity? globalTarget;
  final MonthlyTargetEntity? monthlyTarget;
  final List<LeaderboardLeaderEntity>? topLeaders;

  @override
  List<Object?> get props =>
      [hasCompletedPoll, globalTarget, monthlyTarget, topLeaders];
}
