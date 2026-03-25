import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/data/datasources/daily_activities_remote.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_answer_result_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_pending_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_entity.dart';

@LazySingleton(as: DailyActivitiesRepository)
class DailyActivitiesRepositoryImpl implements DailyActivitiesRepository {
  DailyActivitiesRepositoryImpl(this._remote);
  final DailyActivitiesRemote _remote;

  @override
  Future<Either<Exception, List<DailyQuestionEntity>>>
      getTodayQuestions() async {
    try {
      return Right(await _remote.getTodayQuestions());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, DailyAnswerResultEntity>> postAnswer({
    required String questionId,
    required String optionId,
  }) async {
    try {
      return Right(
        await _remote.postAnswer(
          questionId: questionId,
          optionId: optionId,
        ),
      );
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, DailyPendingEntity>> getPendingStatus() async {
    try {
      return Right(await _remote.getPendingStatus());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, DailyCalendarEntity>> getCalendar({
    required int year,
    int? month,
    int? period,
  }) async {
    try {
      return Right(
          await _remote.getCalendar(year: year, month: month, period: period));
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, DailyAnswerResultEntity>> getDetails({
    required String date,
  }) async {
    try {
      return Right(await _remote.getDetails(date: date));
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
