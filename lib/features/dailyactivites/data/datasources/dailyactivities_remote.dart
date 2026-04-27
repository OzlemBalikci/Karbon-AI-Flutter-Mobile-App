import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

abstract class DailyActivitiesRemote {
  Future<List<DailyQuestionEntity>> getTodayQuestions();

  Future<DailyAnswerResultEntity> postAnswers(
    List<DailySelectedAnswerEntity> answers,
  );

  Future<DailyPendingEntity> getPendingStatus();

  Future<List<DailyPreviousAnswersByDateEntity>> getPreviousAnswers();
}
