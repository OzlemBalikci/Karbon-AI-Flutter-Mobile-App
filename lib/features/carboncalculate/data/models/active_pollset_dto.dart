import 'package:karbon/features/carboncalculate/data/models/poll_question_dto.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

class ActivePollSetDto {
  const ActivePollSetDto({
    required this.pollSetId,
    required this.name,
    required this.description,
    required this.questions,
  });

  final String pollSetId;
  final String name;
  final String description;
  final List<PollQuestionDto> questions;

  factory ActivePollSetDto.fromJson(Map<String, dynamic> json) {
    final raw = json['questions'] as List<dynamic>? ?? [];
    return ActivePollSetDto(
      pollSetId: json['pollSetId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      questions: raw
          .map((e) => PollQuestionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  ActivePollSetEntity toEntity() => ActivePollSetEntity(
        pollSetId: pollSetId,
        name: name,
        description: description,
        questions: questions.map((q) => q.toEntity()).toList(),
      );
}
