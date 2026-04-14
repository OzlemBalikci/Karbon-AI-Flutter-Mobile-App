import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart';

@LazySingleton(as: CalendarRepository)
class CalendarRepositoryImpl implements CalendarRepository {
  CalendarRepositoryImpl(this._remote);

  final CalendarRemote _remote;

  @override
  Future<Either<Exception, DailyCalendarEntity>> getCalendar({
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
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, DailyMonthlyActivitiesEntity>> getMonthlyActivities({
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
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, DailyDayDetailEntity>> getDetails({
    required String date,
  }) async {
    try {
      return Right(await _remote.getDetails(date: date));
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
