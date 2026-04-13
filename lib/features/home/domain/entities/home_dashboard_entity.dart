/// GET `/api/v1/user-results/home` → `data.globalTarget`
class GlobalTargetEntity {
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
}

/// GET `/api/v1/user-results/home` → `data.monthlyTarget`
class MonthlyTargetEntity {
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
}

/// GET `/api/v1/user-results/home` → `data.topLeaders[]` (`project_docs/home.md`)
class HomeTopLeaderEntity {
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
}

/// GET `/api/v1/user-results/home` yanıtındaki `data` gövdesi (`project_docs/home.md`).
class HomeDashboardEntity {
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
}
