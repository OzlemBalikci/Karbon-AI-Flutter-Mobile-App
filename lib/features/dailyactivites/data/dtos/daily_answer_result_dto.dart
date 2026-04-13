import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';

class DailyAnswerResultDto {
  /// Null ise akış tamamlandı.
  final DailyQuestionDto? nextQuestion;
  final double totalCarbonScore;
  final bool isFlowCompleted;

  const DailyAnswerResultDto({
    this.nextQuestion,
    required this.totalCarbonScore,
    required this.isFlowCompleted,
  });

  factory DailyAnswerResultDto.fromJson(Map<String, dynamic> json) =>
      DailyAnswerResultDto(
        nextQuestion: json['nextQuestion'] != null
            ? DailyQuestionDto.fromJson(
                json['nextQuestion'] as Map<String, dynamic>)
            : null,
        totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0.0,
        isFlowCompleted: json['isFlowCompleted'] as bool? ?? false,
      );
}
