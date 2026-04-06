import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyCalendarItemDto {
  const DailyCalendarItemDto({
    required this.date,
    required this.score,
    required this.hasDetails,
  });

  final String date;
  final double score;
  final bool hasDetails;

  factory DailyCalendarItemDto.fromJson(Map<String, dynamic> json) {
    return DailyCalendarItemDto(
      date: json['date'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      hasDetails: json['hasDetails'] as bool? ?? false,
    );
  }

  DailyCalendarItemEntity toEntity() => DailyCalendarItemEntity(
        date: date,
        score: score,
        hasDetails: hasDetails,
      );
}
