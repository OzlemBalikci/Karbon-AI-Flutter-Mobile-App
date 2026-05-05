import 'package:dartz/dartz.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

abstract class CalendarRepository {
  /// GET `/api/v1/daily-calendar` — günlük aktiviteleri.
  Future<Either<AppException, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  });

  /// GET `/api/v1/daily-activities?year=` — aylık aktiviteler.
  Future<Either<AppException, DailyMonthlyActivitiesEntity>>
      getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  });

  /// GET `/api/v1/daily-activities?date=` — seçilen günün detayı.
  Future<Either<AppException, DailyDayDetailEntity>> getDetails({
    required String date,
  });

  /// GET `/api/v1/activity-questions/{id}` — soru detayı.
  Future<Either<AppException, ActivityQuestionDetailEntity>>
      getActivityQuestionDetail({
    required String id,
  });
}
