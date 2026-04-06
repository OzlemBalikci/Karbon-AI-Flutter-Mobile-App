import 'package:karbon/features/dailyactivites/data/models/daily_monthly_day_score_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyMonthlyActivitiesDto {
  const DailyMonthlyActivitiesDto({
    required this.totalMonthlyScore,
    required this.totalPeriodScore,
    required this.dailyScores,
  });

  final double totalMonthlyScore;
  final double totalPeriodScore;
  final List<DailyMonthlyDayScoreDto> dailyScores;

  factory DailyMonthlyActivitiesDto.fromJson(Map<String, dynamic> json) {
    final raw = json['dailyScores'] as List<dynamic>? ?? [];
    return DailyMonthlyActivitiesDto(
      totalMonthlyScore:
          (json['totalMonthlyScore'] as num?)?.toDouble() ?? 0,
      totalPeriodScore: (json['totalPeriodScore'] as num?)?.toDouble() ?? 0,
      dailyScores: raw
          .map((e) =>
              DailyMonthlyDayScoreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  DailyMonthlyActivitiesEntity toEntity() => DailyMonthlyActivitiesEntity(
        totalMonthlyScore: totalMonthlyScore,
        totalPeriodScore: totalPeriodScore,
        dailyScores: dailyScores.map((e) => e.toEntity()).toList(),
      );
}
