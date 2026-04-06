import 'package:karbon/features/dailyactivites/data/models/daily_previous_answer_item_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

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

  DailyPreviousAnswersByDateEntity toEntity() =>
      DailyPreviousAnswersByDateEntity(
        date: date,
        answers: answers.map((e) => e.toEntity()).toList(),
      );
}
