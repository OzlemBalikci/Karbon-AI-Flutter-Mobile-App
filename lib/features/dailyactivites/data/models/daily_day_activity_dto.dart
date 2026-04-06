import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

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

  DailyDayActivityEntity toEntity() => DailyDayActivityEntity(
        questionText: questionText,
        selectedOptionText: selectedOptionText,
        score: score,
        activityDate: activityDate,
      );
}
