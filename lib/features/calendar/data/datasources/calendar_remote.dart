import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

abstract class CalendarRemote {
  Future<DailyDayDetailEntity> getDetails({required DateTime date});

  Future<DailyCalendarEntity> getCalendar({
    required int year,
    required int month,
  });

  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
  });

  Future<ActivityQuestionDetailEntity> getActivityQuestionDetail({
    required String id,
  });
}
