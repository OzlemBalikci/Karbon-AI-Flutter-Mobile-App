class DailySubmittedAnswerLineDto {
  const DailySubmittedAnswerLineDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;

  factory DailySubmittedAnswerLineDto.fromJson(Map<String, dynamic> json) =>
      DailySubmittedAnswerLineDto(
        questionText: json['questionText'] as String,
        selectedOptionText: json['selectedOptionText'] as String,
        carbonValue: (json['carbonValue'] as num).toDouble(),
      );
}

/// `data` içindeki gövde: `totalCarbonScore`, `isFlowCompleted`, `answers[]`.
class DailyAnswerResultDto {
  const DailyAnswerResultDto({
    required this.totalCarbonScore,
    required this.isFlowCompleted,
    required this.answers,
  });

  final double totalCarbonScore;
  final bool isFlowCompleted;
  final List<DailySubmittedAnswerLineDto> answers;

  factory DailyAnswerResultDto.fromJson(Map<String, dynamic> json) =>
      DailyAnswerResultDto(
        totalCarbonScore: (json['totalCarbonScore'] as num).toDouble(),
        isFlowCompleted: json['isFlowCompleted'] as bool,
        answers: (json['answers'] as List<dynamic>)
            .map((a) =>
                DailySubmittedAnswerLineDto.fromJson(a as Map<String, dynamic>))
            .toList(),
      );
}
