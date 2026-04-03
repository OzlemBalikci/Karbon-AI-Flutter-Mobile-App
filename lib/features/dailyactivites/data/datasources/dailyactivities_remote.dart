import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

abstract class DailyActivitiesRemote {
  Future<List<DailyQuestionEntity>> getTodayQuestions();
  Future<DailyAnswerResultEntity> postAnswer({
    required String questionId,
    required String optionId,
  });
  Future<DailyPendingEntity> getPendingStatus();
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  });
  Future<DailyDayDetailEntity> getDetails({required String date});
}
