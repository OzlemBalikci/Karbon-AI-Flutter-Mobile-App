class DailyDayActivityDto {
  const DailyDayActivityDto({
    this.activityQuestionId,
    required this.questionText,
    required this.selectedOptionText,
    required this.score,
    required this.activityDate,
  });

  final String? activityQuestionId;
  final String questionText;
  final String selectedOptionText;
  final double score;
  final String activityDate;

  factory DailyDayActivityDto.fromJson(Map<String, dynamic> json) {
    final rawScore = json['score'] ?? json['carbonValue'];
    return DailyDayActivityDto(
      activityQuestionId: json['activityQuestionId'] as String?,
      questionText: json['questionText'] as String? ?? '',
      selectedOptionText: json['selectedOptionText'] as String? ??
          json['answerText'] as String? ??
          '',
      score: (rawScore is num)
          ? rawScore.toDouble()
          : double.tryParse('$rawScore') ?? 0,
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
