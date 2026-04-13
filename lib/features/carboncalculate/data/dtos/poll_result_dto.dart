class PollResultAnswerItemDto {
  const PollResultAnswerItemDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;

  factory PollResultAnswerItemDto.fromJson(Map<String, dynamic> json) =>
      PollResultAnswerItemDto(
        questionText: json['questionText'] as String? ?? '',
        selectedOptionText: json['selectedOptionText'] as String? ?? '',
        carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      );
}

class PollResultDto {
  const PollResultDto({
    required this.userName,
    required this.totalScore,
    required this.treeCount,
    required this.answers,
  });

  final String userName;
  final double totalScore;
  final int treeCount;
  final List<PollResultAnswerItemDto> answers;

  factory PollResultDto.fromJson(Map<String, dynamic> json) {
    final raw = json['answers'] as List<dynamic>? ?? [];
    return PollResultDto(
      userName: json['userName'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      answers: raw
          .map((e) =>
              PollResultAnswerItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
