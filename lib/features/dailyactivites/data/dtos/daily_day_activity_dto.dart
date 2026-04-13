class DailyDayActivityDto {
  const DailyDayActivityDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.score,
    required this.activityDate,
  });

  final String questionText;
  final String selectedOptionText;
  final double score;
  final String activityDate;

  factory DailyDayActivityDto.fromJson(Map<String, dynamic> json) {
    return DailyDayActivityDto(
      questionText: json['questionText'] as String? ?? '',
      selectedOptionText: json['selectedOptionText'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      activityDate: json['activityDate'] as String? ?? '',
    );
  }
}

class DailyDayDetailDto {
  const DailyDayDetailDto({
    required this.date,
    required this.totalScore,
    required this.activities,
  });

  final String date;
  final double totalScore;
  final List<DailyDayActivityDto> activities;

  factory DailyDayDetailDto.fromJson(Map<String, dynamic> json) {
    final raw = json['activities'] as List<dynamic>? ?? [];
    return DailyDayDetailDto(
      date: json['date'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      activities: raw
          .map((e) => DailyDayActivityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
