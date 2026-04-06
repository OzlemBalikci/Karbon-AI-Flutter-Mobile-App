import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

abstract class DailyActivitiesRepository {
  Future<Either<Exception, List<DailyQuestionEntity>>> getTodayQuestions();

  /// POST `/api/v1/daily-activities/answers` — istek gövdesi `questionId`, `selectedOptionId`, `userId`.
  Future<Either<Exception, DailyAnswerResultEntity>> postAnswer({
    required String questionId,
    required String selectedOptionId,
    required String userId,
  });

  Future<Either<Exception, DailyPendingEntity>> getPendingStatus();

  Future<Either<Exception, List<DailyPreviousAnswersByDateEntity>>>
      getPreviousAnswers();

  Future<Either<Exception, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  });

  Future<Either<Exception, DailyMonthlyActivitiesEntity>> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  });

  Future<Either<Exception, DailyDayDetailEntity>> getDetails({
    required String date,
  });
}
