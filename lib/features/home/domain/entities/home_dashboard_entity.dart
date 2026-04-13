import 'package:equatable/equatable.dart';

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

/// GET `/api/v1/user-results/home` → `data.topLeaders[]` (`project_docs/home.md`)
class HomeTopLeaderEntity extends Equatable {
  const HomeTopLeaderEntity({
    required this.rank,
    required this.fullName,
    required this.treeCount,
    required this.isCurrentUser,
  });

  final int rank;
  final String fullName;
  final int treeCount;
  final bool isCurrentUser;

  /// UI metinleri için (örn. "100 Ağaç").
  String get valueDisplay => '$treeCount Ağaç';

  @override
  List<Object?> get props => [rank, fullName, treeCount, isCurrentUser];
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
  final List<HomeTopLeaderEntity>? topLeaders;

  @override
  List<Object?> get props =>
      [hasCompletedPoll, globalTarget, monthlyTarget, topLeaders];
}
