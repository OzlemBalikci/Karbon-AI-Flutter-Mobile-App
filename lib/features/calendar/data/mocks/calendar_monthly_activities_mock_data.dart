import 'package:karbon/features/calendar/data/mocks/calendar_details_mock_data.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

/// Mock verisi: GET /api/v1/daily-activities/monthly?year=&month=
///
/// 404 (periyotta kayıt yok) senaryosu için [empty] sabitini döndür.
class CalendarMonthlyActivitiesMockData {
  CalendarMonthlyActivitiesMockData._();

  static const empty = DailyMonthlyActivitiesEntity(
    totalMonthlyScore: 0,
    dailyScores: [],
  );

  static DailyMonthlyActivitiesEntity forMonth(int year, int month) {
    final days = CalendarDetailsMockData.items.where((d) {
      final dt = DateTime.tryParse(d.date);
      return dt != null && dt.year == year && dt.month == month;
    }).toList();

    if (days.isEmpty) return empty;

    final dailyScores = days
        .map((d) => DailyMonthlyDayScoreEntity(
              date: d.date,
              totalScore: d.totalScore,
            ))
        .toList();

    final totalMonthly = days.fold<double>(0, (sum, d) => sum + d.totalScore);
    return DailyMonthlyActivitiesEntity(
      totalMonthlyScore: totalMonthly,
      dailyScores: dailyScores,
    );
  }
}
