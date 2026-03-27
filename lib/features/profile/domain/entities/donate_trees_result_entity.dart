class DonateTreesResultEntity {
  const DonateTreesResultEntity({
    required this.donatedTreeCount,
    required this.totalDonatedTreeCount,
  });

  final int donatedTreeCount;
  final int totalDonatedTreeCount;

  factory DonateTreesResultEntity.fromJson(Map<String, dynamic> json) {
    return DonateTreesResultEntity(
      donatedTreeCount: (json['donatedTreeCount'] as num?)?.toInt() ?? 0,
      totalDonatedTreeCount:
          (json['totalDonatedTreeCount'] as num?)?.toInt() ?? 0,
    );
  }
}
