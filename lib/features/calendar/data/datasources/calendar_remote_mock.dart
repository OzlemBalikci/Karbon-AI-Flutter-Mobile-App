import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_mock_data.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

/// Geliştirme: [CalendarMockData] ile calendar verisi.
/// Canlı API için [CalendarRemoteImpl] `@LazySingleton(as: CalendarRemote)` ile kayıtlıdır.
@LazySingleton(as: CalendarRemote)
class CalendarRemoteMock implements CalendarRemote {
  @override
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    required int month,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 80));
    return CalendarMockData.calendarForMonth(year, month);
  }

  @override
  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 80));
    return CalendarMockData.monthlyActivitiesForMonth(year, month);
  }

  @override
  Future<DailyDayDetailEntity> getDetails({required DateTime date}) async {
    await Future<void>.delayed(const Duration(milliseconds: 60));
    return CalendarMockData.detailForRequestedDate(date.toIso8601String());
  }

  @override
  Future<ActivityQuestionDetailEntity> getActivityQuestionDetail({
    required String id,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 60));
    return CalendarMockData.questionDetailForRequestedId(id);
  }
}
