class LeaderboardLeaderDto {
  const LeaderboardLeaderDto({
    required this.rank,
    required this.fullName,
    required this.treeCount,
    required this.isCurrentUser,
  });

  final int rank;
  final String fullName;
  final int treeCount;
  final bool isCurrentUser;

  factory LeaderboardLeaderDto.fromJson(Map<String, dynamic> json) {
    return LeaderboardLeaderDto(
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      fullName: json['fullName'] as String? ?? '',
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      isCurrentUser: json['isCurrentUser'] as bool? ?? false,
    );
  }
}
