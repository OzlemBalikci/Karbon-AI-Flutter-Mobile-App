class DailySubmittedAnswerLineDto {
  const DailySubmittedAnswerLineDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;

  factory DailySubmittedAnswerLineDto.fromJson(Map<String, dynamic> json) {
    return DailySubmittedAnswerLineDto(
      questionText: json['questionText'] as String? ?? '',
      selectedOptionText: json['selectedOptionText'] as String? ?? '',
      carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0.0,
    );
  }
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

  factory DailyAnswerResultDto.fromJson(Map<String, dynamic> json) {
    final raw = json['answers'];
    final lines = raw is List
        ? raw
            .whereType<Map<String, dynamic>>()
            .map(DailySubmittedAnswerLineDto.fromJson)
            .toList()
        : <DailySubmittedAnswerLineDto>[];
    return DailyAnswerResultDto(
      totalCarbonScore:
          (json['totalCarbonScore'] as num?)?.toDouble() ?? 0.0,
      isFlowCompleted: json['isFlowCompleted'] as bool? ?? false,
      answers: lines,
    );
  }
}
