import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyQuestionOptionDto {
  const DailyQuestionOptionDto({
    required this.id,
    required this.text,
    required this.carbonValue,
    this.nextQuestionId,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;

  factory DailyQuestionOptionDto.fromJson(Map<String, dynamic> json) {
    return DailyQuestionOptionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      nextQuestionId: json['nextQuestionId'] as String?,
    );
  }

  DailyQuestionOptionEntity toEntity() => DailyQuestionOptionEntity(
        id: id,
        text: text,
        carbonValue: carbonValue,
        nextQuestionId: nextQuestionId,
      );
}
