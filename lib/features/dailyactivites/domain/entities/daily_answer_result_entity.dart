import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';

class DailyAnswerResultEntity {
  const DailyAnswerResultEntity({
    required this.score,
    this.nextQuestion,
  });

  final double score;

  final DailyQuestionEntity? nextQuestion;

  factory DailyAnswerResultEntity.fromJson(Map<String, dynamic> json) {
    final next = json['nextQuestion'];
    return DailyAnswerResultEntity(
      score: (json['score'] as num?)?.toDouble() ?? 0,
      nextQuestion: next is Map<String, dynamic>
          ? DailyQuestionEntity.fromJson(next)
          : null,
    );
  }
}
