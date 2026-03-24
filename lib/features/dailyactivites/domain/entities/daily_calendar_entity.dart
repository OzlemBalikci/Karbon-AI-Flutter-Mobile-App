import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_item_entity.dart';

class DailyCalendarEntity {
  const DailyCalendarEntity({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemEntity> items;

  factory DailyCalendarEntity.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    final rawItems = data['items'] as List<dynamic>? ?? [];
    return DailyCalendarEntity(
      totalScore: (data['totalScore'] as num?)?.toDouble() ?? 0,
      items: rawItems
          .map((e) =>
              DailyCalendarItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
