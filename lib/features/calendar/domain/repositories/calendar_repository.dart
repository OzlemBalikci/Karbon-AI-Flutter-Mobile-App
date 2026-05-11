import 'package:dartz/dartz.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

abstract class CalendarRepository {
  Future<Either<AppException, DailyDayDetailEntity>> getDetails({
    required DateTime date,
  });

  Future<Either<AppException, DailyCalendarEntity>> getCalendar({
    required int year,
    required int month,
  });

  Future<Either<AppException, DailyMonthlyActivitiesEntity>>
      getMonthlyActivities({
    required int year,
    required int month,
  });

  Future<Either<AppException, ActivityQuestionDetailEntity>>
      getActivityQuestionDetail({
    required String id,
  });
}
