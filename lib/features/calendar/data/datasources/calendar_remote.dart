import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

abstract class CalendarRemote {
  /// GET `/api/v1/daily-activities?date=` — seçilen günün detayı.
  Future<DailyDayDetailEntity> getDetails({required DateTime date});

  /// GET `/api/v1/daily-calendar` — günlük aktiviteleri.
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    required int month,
  });

  /// GET `/api/v1/daily-activities?year=` — aylık aktiviteler.
  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
  });

  /// GET `/api/v1/activity-questions/{id}` — soru detayı.
  Future<ActivityQuestionDetailEntity> getActivityQuestionDetail({
    required String id,
  });
}
