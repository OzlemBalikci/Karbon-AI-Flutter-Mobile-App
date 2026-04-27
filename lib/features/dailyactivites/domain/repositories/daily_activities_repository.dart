import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

abstract class DailyActivitiesRepository {
  Future<Either<Exception, List<DailyQuestionEntity>>> getTodayQuestions();

  /// POST `/api/v1/daily-activities/answers` — `{ "answers": [...] }`, yanıt `{ "data": { ... } }`.
  Future<Either<Exception, DailyAnswerResultEntity>> postAnswers(
    List<DailySelectedAnswerEntity> answers,
  );

  Future<Either<Exception, DailyPendingEntity>> getPendingStatus();

  Future<Either<Exception, List<DailyPreviousAnswersByDateEntity>>>
      getPreviousAnswers();
}
