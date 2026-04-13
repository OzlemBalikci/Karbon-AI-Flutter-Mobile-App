class DonationItemDto {
  const DonationItemDto({
    required this.treeCount,
    required this.pointsSpent,
    required this.donationDate,
  });

  final int treeCount;
  final double pointsSpent;
  final DateTime donationDate;

  factory DonationItemDto.fromJson(Map<String, dynamic> json) {
    return DonationItemDto(
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      pointsSpent: (json['pointsSpent'] as num?)?.toDouble() ?? 0,
      donationDate: DateTime.parse(json['donationDate'] as String),
    );
  }
}
