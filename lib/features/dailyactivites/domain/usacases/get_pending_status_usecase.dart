import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

@injectable
class GetPendingStatusUseCase {
  GetPendingStatusUseCase(this._repository);
  final DailyActivitiesRepository _repository;

  Future<Either<Exception, DailyPendingEntity>> call() =>
      _repository.getPendingStatus();
}
