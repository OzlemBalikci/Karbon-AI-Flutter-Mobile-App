class HomeDashboardEntity {
  const HomeDashboardEntity({
    required this.yearlyTreeCount,
    required this.monthlyTreeCount,
  });

  final int yearlyTreeCount;
  final int monthlyTreeCount;

  factory HomeDashboardEntity.fromJson(Map<String, dynamic> json) =>
      HomeDashboardEntity(
        yearlyTreeCount: json['yearlyTreeCount'] as int? ?? 0,
        monthlyTreeCount: json['monthlyTreeCount'] as int? ?? 0,
      );
}
