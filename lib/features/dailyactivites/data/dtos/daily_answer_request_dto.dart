class DailyAnswerRequestDto {
  final String questionId;
  final String selectedOptionId;
  final String userId;

  const DailyAnswerRequestDto({
    required this.questionId,
    required this.selectedOptionId,
    required this.userId,
  });

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'selectedOptionId': selectedOptionId,
        'userId': userId,
      };
}
