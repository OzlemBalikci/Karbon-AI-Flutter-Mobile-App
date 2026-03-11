class UserRankEntity {
  const UserRankEntity({
    required this.rank,
    required this.treeCount,
    required this.message,
  });

  final int rank;
  final int treeCount;
  final String message;

  factory UserRankEntity.fromJson(Map<String, dynamic> json) => UserRankEntity(
        rank: json['rank'] as int? ?? 0,
        treeCount: json['treeCount'] as int? ?? 0,
        message: json['message'] as String? ?? '',
      );
}
