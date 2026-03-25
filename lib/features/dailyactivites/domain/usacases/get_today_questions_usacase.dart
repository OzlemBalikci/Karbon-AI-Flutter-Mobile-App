import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';

@injectable
class GetTodayQuestionsUsecase {
  GetTodayQuestionsUsecase(this._repository);
  final DailyActivitiesRepository _repository;

  Future<Either<Exception, List<DailyQuestionEntity>>> call() =>
      _repository.getTodayQuestions();
}
