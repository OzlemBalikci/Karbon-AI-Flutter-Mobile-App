import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

abstract class DailyActivitiesRemote {
  Future<List<DailyQuestionEntity>> getTodayQuestions();

  Future<DailyAnswerResultEntity> postAnswer({
    required String questionId,
    required String selectedOptionId,
    required String userId,
  });

  Future<DailyPendingEntity> getPendingStatus();

  Future<List<DailyPreviousAnswersByDateEntity>> getPreviousAnswers();
}
