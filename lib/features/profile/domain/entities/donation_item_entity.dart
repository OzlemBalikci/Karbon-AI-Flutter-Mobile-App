class DonationItemEntity {
  const DonationItemEntity({
    required this.treeCount,
    required this.pointsSpent,
    required this.donationDate,
  });

  final int treeCount;
  final int pointsSpent;
  final DateTime donationDate;

  factory DonationItemEntity.fromJson(Map<String, dynamic> json) {
    return DonationItemEntity(
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      pointsSpent: (json['pointsSpent'] as num?)?.toInt() ?? 0,
      donationDate: DateTime.tryParse(json['donationDate'] as String? ?? '') ??
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
    );
  }
}
