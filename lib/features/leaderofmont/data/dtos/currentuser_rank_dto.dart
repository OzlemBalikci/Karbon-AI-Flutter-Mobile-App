class CurrentUserRankDto {
  const CurrentUserRankDto({
    required this.rank,
    required this.treeCount,
    required this.message,
  });

  final int rank;
  final int treeCount;
  final String message;

  factory CurrentUserRankDto.fromJson(Map<String, dynamic> json) {
    return CurrentUserRankDto(
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
    );
  }
}
