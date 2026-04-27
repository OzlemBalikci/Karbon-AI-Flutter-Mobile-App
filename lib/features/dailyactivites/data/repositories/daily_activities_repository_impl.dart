import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/errors/exception_handler.dart';
import 'package:karbon/features/dailyactivites/data/datasources/dailyactivities_remote.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';

@LazySingleton(as: DailyActivitiesRepository)
class DailyActivitiesRepositoryImpl implements DailyActivitiesRepository {
  DailyActivitiesRepositoryImpl(this._remote);

  final DailyActivitiesRemote _remote;

  @override
  Future<Either<AppException, List<DailyQuestionEntity>>>
      getTodayQuestions() async {
    try {
      return Right(await _remote.getTodayQuestions());
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, DailyAnswerResultEntity>> postAnswers(
    List<DailySelectedAnswerEntity> answers,
  ) async {
    try {
      return Right(await _remote.postAnswers(answers));
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, DailyPendingEntity>> getPendingStatus() async {
    try {
      return Right(await _remote.getPendingStatus());
    } catch (e) {
      return guardLeft(e);
    }
  }

  @override
  Future<Either<AppException, List<DailyPreviousAnswersByDateEntity>>>
      getPreviousAnswers() async {
    try {
      return Right(await _remote.getPreviousAnswers());
    } catch (e) {
      return guardLeft(e);
    }
  }
}
