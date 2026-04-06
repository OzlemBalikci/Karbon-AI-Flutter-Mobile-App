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

  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  });

  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  });

  Future<DailyDayDetailEntity> getDetails({required String date});
}
