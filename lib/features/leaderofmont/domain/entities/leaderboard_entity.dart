/// Tek bir liderlik satırı (podium veya liste).
class LeaderboardLeaderEntity {
  const LeaderboardLeaderEntity({
    required this.rank,
    required this.fullName,
    required this.treeCount,
    required this.isCurrentUser,
  });

  final int rank;
  final String fullName;
  final int treeCount;
  final bool isCurrentUser;

  /// UI metinleri için (örn. "100000 Ağaç").
  String get valueDisplay => '$treeCount Ağaç';
}

/// Alt bant: kullanıcının kendi sırası.
class CurrentUserRankEntity {
  const CurrentUserRankEntity({
    required this.rank,
    required this.treeCount,
    required this.message,
  });

  final int rank;
  final int treeCount;
  final String message;
}

/// GET `/api/v1/user-results/leaderboard` yanıtının `data` gövdesi.
class LeaderboardDataEntity {
  const LeaderboardDataEntity({
    required this.podium,
    required this.leaders,
    required this.currentUserRank,
  });

  final List<LeaderboardLeaderEntity> podium;
  final List<LeaderboardLeaderEntity> leaders;
  final CurrentUserRankEntity currentUserRank;
}
