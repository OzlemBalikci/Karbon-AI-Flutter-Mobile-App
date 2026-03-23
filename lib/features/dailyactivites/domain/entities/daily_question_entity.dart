import 'package:karbon/features/dailyactivites/domain/entities/daily_question_option.dart';

class DailyQuestionEntity {
  const DailyQuestionEntity({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.options,
  });
  final String id;
  final String text;
  final int displayOrder;
  final List<DailyQuestionOptionEntity> options;

  factory DailyQuestionEntity.fromJson(Map<String, dynamic> json) {
    final raw = json['options'] as List<dynamic>? ?? [];
    return DailyQuestionEntity(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      displayOrder: json['displayOrder'] as int? ?? 0,
      options: raw
          .map((e) =>
              DailyQuestionOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
