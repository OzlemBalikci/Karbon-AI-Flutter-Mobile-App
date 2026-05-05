import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/errors/exception_handler.dart';

@LazySingleton(as: CalendarRepository)
class CalendarRepositoryImpl implements CalendarRepository {
  CalendarRepositoryImpl(this._remote);

  final CalendarRemote _remote;

  @override
  Future<Either<AppException, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  }) async {
    try {
      return Right(
        await _remote.getCalendar(
          year: year,
          month: month,
          period: period,
        ),
      );
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, DailyMonthlyActivitiesEntity>> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  }) async {
    try {
      return Right(
        await _remote.getMonthlyActivities(
          year: year,
          month: month,
          period: period,
        ),
      );
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, DailyDayDetailEntity>> getDetails({
    required String date,
  }) async {
    try {
      return Right(await _remote.getDetails(date: date));
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, ActivityQuestionDetailEntity>>
      getActivityQuestionDetail({
    required String id,
  }) async {
    try {
      return Right(await _remote.getActivityQuestionDetail(id: id));
    } catch (e) {
      return guardLeft(e);
    }
  }
}
