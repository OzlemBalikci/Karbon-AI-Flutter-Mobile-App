import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';

@injectable
class GetMonthlyActivitiesUsecase {
  GetMonthlyActivitiesUsecase(this._repository);
  final DailyActivitiesRepository _repository;

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
