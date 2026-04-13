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
}

class DailyPreviousAnswersByDateDto {
  const DailyPreviousAnswersByDateDto({
    required this.date,
    required this.answers,
  });

  final String date;
  final List<DailyPreviousAnswerItemDto> answers;

  factory DailyPreviousAnswersByDateDto.fromJson(Map<String, dynamic> json) {
    final raw = json['answers'] as List<dynamic>? ?? [];
    return DailyPreviousAnswersByDateDto(
      date: json['date'] as String? ?? '',
      answers: raw
          .map((e) =>
              DailyPreviousAnswerItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
