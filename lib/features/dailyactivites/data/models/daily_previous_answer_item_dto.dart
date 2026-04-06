import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyPreviousAnswerItemDto {
  const DailyPreviousAnswerItemDto({
    required this.questionText,
    required this.answerText,
    required this.score,
    required this.date,
  });

  final String questionText;
  final String answerText;
  final double score;
  final String date;

  factory DailyPreviousAnswerItemDto.fromJson(Map<String, dynamic> json) {
    return DailyPreviousAnswerItemDto(
      questionText: json['questionText'] as String? ?? '',
      answerText: json['answerText'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      date: json['date'] as String? ?? '',
    );
  }

  DailyPreviousAnswerItemEntity toEntity() => DailyPreviousAnswerItemEntity(
        questionText: questionText,
        answerText: answerText,
        score: score,
        date: date,
      );
}
