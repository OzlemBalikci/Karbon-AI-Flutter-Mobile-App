import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart';

@injectable
class GetMonthlyActivitiesUsecase {
  GetMonthlyActivitiesUsecase(this._repository);
  final CalendarRepository _repository;

  Future<Either<Exception, DailyMonthlyActivitiesEntity>> call({
    required int year,
    required int month,
    required int period,
  }) =>
      _repository.getMonthlyActivities(
        year: year,
        month: month,
        period: period,
      );
}
