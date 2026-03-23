import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/data/datasources/daily_activities_remote.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activity_answer_result_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';

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
  Future<Either<Exception, DailyActivityAnswerResultEntity>> submitAnswer({
    required String questionId,
    required String optionId,
  }) async {
    try {
      return Right(
        await _remote.submitAnswer(
          questionId: questionId,
          optionId: optionId,
        ),
      );
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
