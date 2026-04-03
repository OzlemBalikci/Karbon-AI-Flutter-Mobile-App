import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';

@injectable
class PostAnswerUsecase {
  PostAnswerUsecase(this._repository);
  final DailyActivitiesRepository _repository;

  Future<Either<Exception, DailyAnswerResultEntity>> call({
    required String questionId,
    required String optionId,
  }) =>
      _repository.postAnswer(questionId: questionId, optionId: optionId);
}
