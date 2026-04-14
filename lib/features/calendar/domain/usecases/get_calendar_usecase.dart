import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart';

@injectable
class GetCalendarUsecase {
  GetCalendarUsecase(this._repository);
  final CalendarRepository _repository;

  Future<Either<Exception, DailyCalendarEntity>> call({
    required int year,
    int? month,
    int? period,
  }) =>
      _repository.getCalendar(year: year, month: month, period: period);
}
