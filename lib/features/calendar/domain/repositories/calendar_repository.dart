import 'package:dartz/dartz.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

abstract class CalendarRepository {
  Future<Either<Exception, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  });

  Future<Either<Exception, DailyMonthlyActivitiesEntity>> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  });

  Future<Either<Exception, DailyDayDetailEntity>> getDetails({
    required String date,
  });
}
