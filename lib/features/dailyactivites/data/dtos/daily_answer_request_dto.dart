class DailyAnswerItemRequestDto {
  const DailyAnswerItemRequestDto({
    required this.questionId,
    required this.selectedOptionId,
  });

  final String questionId;
  final String selectedOptionId;

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'selectedOptionId': selectedOptionId,
      };
}

/// POST `/api/v1/daily-activities/answers` — `{ "answers": [ ... ] }`.
class DailyAnswersBatchRequestDto {
  const DailyAnswersBatchRequestDto({required this.answers});

  final List<DailyAnswerItemRequestDto> answers;

  Map<String, dynamic> toJson() => {
        'answers': answers.map((e) => e.toJson()).toList(),
      };
}
