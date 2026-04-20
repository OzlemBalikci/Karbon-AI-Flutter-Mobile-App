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

  factory DailyAnswerResultDto.fromJson(Map<String, dynamic> json) {
    final nextRaw = json['nextQuestion'];
    return DailyAnswerResultDto(
      nextQuestion: nextRaw is Map<String, dynamic>
          ? DailyQuestionDto.fromJson(nextRaw)
          : null,
      totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0.0,
      isFlowCompleted: json['isFlowCompleted'] as bool? ?? false,
    );
  }
}
