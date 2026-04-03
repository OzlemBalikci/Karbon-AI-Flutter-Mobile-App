import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

@injectable
class GetCalendarUsecase {
  GetCalendarUsecase(this._repository);
  final DailyActivitiesRepository _repository;

  Future<Either<Exception, DailyCalendarEntity>> call({
    required int year,
    int? month,
    int? period,
  }) =>
      _repository.getCalendar(year: year, month: month, period: period);
}
