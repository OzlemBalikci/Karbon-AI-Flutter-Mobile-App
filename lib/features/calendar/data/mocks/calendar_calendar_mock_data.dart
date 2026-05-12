import 'package:karbon/features/calendar/data/mocks/calendar_details_mock_data.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

/// Mock verisi: GET /api/v1/daily-activities/calendar?year=&month=
class CalendarCalendarMockData {
  CalendarCalendarMockData._();

  static DailyCalendarEntity forMonth(int year, int month) {
    final days = CalendarDetailsMockData.items.where((d) {
      final dt = DateTime.tryParse(d.date);
      return dt != null && dt.year == year && dt.month == month;
    }).toList();

    final items = days.map((d) {
      final ymd = d.date.length >= 10 ? d.date.substring(0, 10) : d.date;
      return DailyCalendarItemEntity(
        date: ymd,
        score: d.totalScore,
        hasDetails: d.activities.isNotEmpty,
      );
    }).toList();

    final total = days.fold<double>(0, (sum, d) => sum + d.totalScore);
    return DailyCalendarEntity(totalScore: total, items: items);
  }
}
