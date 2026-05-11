import 'package:equatable/equatable.dart';

class LeaderboardLeaderEntity extends Equatable {
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

  String get valueDisplay => '$treeCount Ağaç';

  @override
  List<Object?> get props => [rank, fullName, treeCount, isCurrentUser];
}

class CurrentUserRankEntity extends Equatable {
  const CurrentUserRankEntity({
    required this.rank,
    required this.treeCount,
    required this.message,
  });

  final int rank;
  final int treeCount;
  final String message;

  @override
  List<Object?> get props => [rank, treeCount, message];
}

class LeaderboardDataEntity extends Equatable {
  const LeaderboardDataEntity({
    required this.podium,
    required this.leaders,
    required this.currentUserRank,
  });

  final List<LeaderboardLeaderEntity> podium;
  final List<LeaderboardLeaderEntity> leaders;
  final CurrentUserRankEntity currentUserRank;

  @override
  List<Object?> get props => [podium, leaders, currentUserRank];
}
