import 'package:karbon/features/dailyactivites/data/models/daily_question_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyPostAnswerResponseDto {
  const DailyPostAnswerResponseDto({
    this.nextQuestion,
    required this.totalCarbonScore,
    required this.isFlowCompleted,
  });

  final DailyQuestionDto? nextQuestion;
  final double totalCarbonScore;
  final bool isFlowCompleted;

  factory DailyPostAnswerResponseDto.fromJson(Map<String, dynamic> json) {
    final next = json['nextQuestion'];
    return DailyPostAnswerResponseDto(
      nextQuestion:
          next is Map<String, dynamic> ? DailyQuestionDto.fromJson(next) : null,
      totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0,
      isFlowCompleted: json['isFlowCompleted'] as bool? ?? false,
    );
  }

  DailyAnswerResultEntity toEntity() => DailyAnswerResultEntity(
        totalCarbonScore: totalCarbonScore,
        isFlowCompleted: isFlowCompleted,
        nextQuestion: nextQuestion?.toEntity(),
      );
}
