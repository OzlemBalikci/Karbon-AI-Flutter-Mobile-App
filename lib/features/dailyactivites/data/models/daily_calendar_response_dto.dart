import 'package:karbon/features/dailyactivites/data/models/daily_calendar_item_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyCalendarResponseDto {
  const DailyCalendarResponseDto({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemDto> items;

  factory DailyCalendarResponseDto.fromJson(Map<String, dynamic> json) {
    final raw = json['items'] as List<dynamic>? ?? [];
    return DailyCalendarResponseDto(
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      items: raw
          .map((e) => DailyCalendarItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  DailyCalendarEntity toEntity() => DailyCalendarEntity(
        totalScore: totalScore,
        items: items.map((e) => e.toEntity()).toList(),
      );
}
