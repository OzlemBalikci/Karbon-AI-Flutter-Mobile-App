import 'package:karbon/features/dailyactivites/data/models/daily_question_option_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyQuestionDto {
  const DailyQuestionDto({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.options,
    required this.remainingSeconds,
  });

  final String id;
  final String text;
  final int displayOrder;
  final List<DailyQuestionOptionDto> options;
  final int remainingSeconds;

  factory DailyQuestionDto.fromJson(Map<String, dynamic> json) {
    final rawOpts = json['options'] as List<dynamic>? ?? [];
    return DailyQuestionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
      options: rawOpts
          .map(
              (e) => DailyQuestionOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      remainingSeconds: (json['remainingSeconds'] as num?)?.toInt() ?? 0,
    );
  }

  DailyQuestionEntity toEntity() => DailyQuestionEntity(
        id: id,
        text: text,
        displayOrder: displayOrder,
        options: options.map((e) => e.toEntity()).toList(),
        remainingSeconds: remainingSeconds,
      );
}
