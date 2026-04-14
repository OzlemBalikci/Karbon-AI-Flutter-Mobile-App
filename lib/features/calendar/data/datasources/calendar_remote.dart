import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

abstract class CalendarRemote {
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  });

  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  });
  Future<DailyDayDetailEntity> getDetails({required String date});
}
