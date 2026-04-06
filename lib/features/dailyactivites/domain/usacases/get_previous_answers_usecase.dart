import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';

@injectable
class GetPreviousAnswersUsecase {
  GetPreviousAnswersUsecase(this._repository);
  final DailyActivitiesRepository _repository;

  Future<Either<Exception, List<DailyPreviousAnswersByDateEntity>>> call() =>
      _repository.getPreviousAnswers();
}
