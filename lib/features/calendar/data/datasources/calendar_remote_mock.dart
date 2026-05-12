import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart';
import 'package:karbon/features/calendar/data/datasources/mocks/calendar_activity_question_detail_mock_data.dart';
import 'package:karbon/features/calendar/data/datasources/mocks/calendar_calendar_mock_data.dart';
import 'package:karbon/features/calendar/data/datasources/mocks/calendar_details_mock_data.dart';
import 'package:karbon/features/calendar/data/datasources/mocks/calendar_monthly_activities_mock_data.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

@LazySingleton(as: CalendarRemote)
class CalendarRemoteMock implements CalendarRemote {
  @override
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    required int month,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 80));
    return CalendarCalendarMockData.forMonth(year, month);
  }

  @override
  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 80));
    return CalendarMonthlyActivitiesMockData.forMonth(year, month);
  }

  @override
  Future<DailyDayDetailEntity> getDetails({required DateTime date}) async {
    await Future<void>.delayed(const Duration(milliseconds: 60));
    return CalendarDetailsMockData.forDate(date);
  }

  @override
  Future<ActivityQuestionDetailEntity> getActivityQuestionDetail({
    required String id,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 60));
    return CalendarActivityQuestionDetailMockData.forId(id);
  }
}
