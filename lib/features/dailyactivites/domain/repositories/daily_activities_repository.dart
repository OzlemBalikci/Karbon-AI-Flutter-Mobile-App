import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

abstract class DailyActivitiesRepository {
  Future<Either<Exception, List<DailyQuestionEntity>>> getTodayQuestions();
  Future<Either<Exception, DailyAnswerResultEntity>> postAnswer({
    required String questionId,
    required String optionId,
  });
  Future<Either<Exception, DailyPendingEntity>> getPendingStatus();
  Future<Either<Exception, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  });
  Future<Either<Exception, DailyDayDetailEntity>> getDetails({
    required String date,
  });
}
