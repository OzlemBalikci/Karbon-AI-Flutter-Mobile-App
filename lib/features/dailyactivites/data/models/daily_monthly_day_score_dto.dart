import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyMonthlyDayScoreDto {
  const DailyMonthlyDayScoreDto({
    required this.date,
    required this.totalScore,
  });

  final String date;
  final double totalScore;

  factory DailyMonthlyDayScoreDto.fromJson(Map<String, dynamic> json) {
    return DailyMonthlyDayScoreDto(
      date: json['date'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
    );
  }

  DailyMonthlyDayScoreEntity toEntity() => DailyMonthlyDayScoreEntity(
        date: date,
        totalScore: totalScore,
      );
}
