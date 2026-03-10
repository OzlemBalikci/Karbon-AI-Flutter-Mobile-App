class LeaderboardEntry {
  final int rank;
  final String fullName;
  final int treeCount;
  final bool isCurrentUser;

  const LeaderboardEntry({
    required this.rank,
    required this.fullName,
    required this.treeCount,
    required this.isCurrentUser,
  });

  String get valueDisplay => _formatTreeCount(treeCount);

  static String _formatTreeCount(int n) {
    if (n >= 1000000000) return '${n ~/ 1000000000}B Ağaç';
    if (n >= 1000000) return '${n ~/ 1000000}M Ağaç';
    if (n >= 1000) return '${n ~/ 1000}K Ağaç';
    return '$n Ağaç';
  }

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) =>
      LeaderboardEntry(
        rank: json['rank'] as int? ?? 0,
        fullName: json['fullName'] as String? ?? '',
        treeCount: json['treeCount'] as int? ?? 0,
        isCurrentUser: json['isCurrentUser'] as bool? ?? false,
      );

  @override
  List<Object?> get props => [rank, fullName, treeCount, isCurrentUser];
}
