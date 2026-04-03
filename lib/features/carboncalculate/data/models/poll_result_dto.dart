import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

class PollResultAnswerDto {
  const PollResultAnswerDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;

  factory PollResultAnswerDto.fromJson(Map<String, dynamic> json) =>
      PollResultAnswerDto(
        questionText: json['questionText'] as String? ?? '',
        selectedOptionText: json['selectedOptionText'] as String? ?? '',
        carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      );

  PollResultAnswerEntity toEntity() => PollResultAnswerEntity(
        questionText: questionText,
        selectedOptionText: selectedOptionText,
        carbonValue: carbonValue,
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
  final List<PollResultAnswerDto> answers;

  factory PollResultDto.fromJson(Map<String, dynamic> json) {
    final raw = json['answers'] as List<dynamic>? ?? [];
    return PollResultDto(
      userName: json['userName'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      answers: raw
          .map((e) => PollResultAnswerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  PollResultEntity toEntity() => PollResultEntity(
        userName: userName,
        totalScore: totalScore,
        treeCount: treeCount,
        answers: answers.map((a) => a.toEntity()).toList(),
      );
}
