class DailyMonthlyDayScoreDto {
  const DailyMonthlyDayScoreDto({
    required this.date,
    required this.totalScore,
  });

  final String date;
  final double totalScore;

  factory DailyMonthlyDayScoreDto.fromJson(Map<String, dynamic> json) {
    return DailyMonthlyDayScoreDto(
      date: json['date'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
    );
  }
}

class DailyMonthlyActivitiesDto {
  const DailyMonthlyActivitiesDto({
    required this.totalMonthlyScore,
    required this.totalPeriodScore,
    required this.dailyScores,
  });

  final double totalMonthlyScore;
  final double totalPeriodScore;
  final List<DailyMonthlyDayScoreDto> dailyScores;

  factory DailyMonthlyActivitiesDto.fromJson(Map<String, dynamic> json) {
    final raw = json['dailyScores'] as List<dynamic>? ?? [];
    return DailyMonthlyActivitiesDto(
      totalMonthlyScore: (json['totalMonthlyScore'] as num?)?.toDouble() ?? 0,
      totalPeriodScore: (json['totalPeriodScore'] as num?)?.toDouble() ?? 0,
      dailyScores: raw
          .map((e) =>
              DailyMonthlyDayScoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
