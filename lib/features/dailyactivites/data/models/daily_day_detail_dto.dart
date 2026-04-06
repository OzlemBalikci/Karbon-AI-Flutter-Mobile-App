import 'package:karbon/features/dailyactivites/data/models/daily_day_activity_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyDayDetailDto {
  const DailyDayDetailDto({
    required this.date,
    required this.totalScore,
    required this.activities,
  });

  final String date;
  final double totalScore;
  final List<DailyDayActivityDto> activities;

  factory DailyDayDetailDto.fromJson(Map<String, dynamic> json) {
    final raw = json['activities'] as List<dynamic>? ?? [];
    return DailyDayDetailDto(
      date: json['date'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      activities: raw
          .map((e) => DailyDayActivityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  DailyDayDetailEntity toEntity() => DailyDayDetailEntity(
        date: date,
        totalScore: totalScore,
        activities: activities.map((e) => e.toEntity()).toList(),
      );
}
