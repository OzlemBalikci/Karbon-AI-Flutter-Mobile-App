import 'package:dartz/dartz.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_pending_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activity_answer_result_entity.dart';

abstract class DailyActivitiesRepository {
  // GET /api/v1/daily-activities/questions
  Future<Either<Exception, List<DailyQuestionEntity>>> getTodayQuestions();

  // POST /api/v1/daily-activities/answers
  Future<Either<Exception, DailyActivityAnswerResultEntity>> submitAnswer({
    required String questionId,
    required String optionId,
  });

  // GET /api/v1/daily-activities/pending  ← YENİ
  Future<Either<Exception, DailyPendingEntity>> getPendingStatus();

  // GET /api/v1/daily-activities/calendar  ← YENİ
  Future<Either<Exception, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  });
}
