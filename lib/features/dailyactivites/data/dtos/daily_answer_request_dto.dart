// dto/daily_selected_answer_dto.dart
class DailySelectedAnswerDto {
  const DailySelectedAnswerDto({
    required this.questionId,
    required this.selectedOptionId,
  });

  final String questionId;
  final String selectedOptionId;

  factory DailySelectedAnswerDto.fromJson(Map<String, dynamic> json) =>
      DailySelectedAnswerDto(
        questionId: json['questionId'] as String,
        selectedOptionId: json['selectedOptionId'] as String,
      );
}
