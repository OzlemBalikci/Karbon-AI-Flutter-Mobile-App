class DonateTreesResultDto {
  const DonateTreesResultDto({
    required this.donatedTreeCount,
    required this.totalDonatedTreeCount,
  });

  final int donatedTreeCount;
  final int totalDonatedTreeCount;

  factory DonateTreesResultDto.fromJson(Map<String, dynamic> json) {
    return DonateTreesResultDto(
      donatedTreeCount: (json['donatedTreeCount'] as num?)?.toInt() ?? 0,
      totalDonatedTreeCount:
          (json['totalDonatedTreeCount'] as num?)?.toInt() ?? 0,
    );
  }
}
