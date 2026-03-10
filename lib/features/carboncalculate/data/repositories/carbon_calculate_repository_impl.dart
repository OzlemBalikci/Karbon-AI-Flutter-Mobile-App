import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carbon_calculate_repository.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carbon_calculate_remote.dart';
import 'package:karbon/features/carboncalculate/domain/entities/monthly_poll_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_answer_item_entity.dart';
import 'package:karbon/features/carboncalculate/domain/entities/submit_poll_answer_response_entity.dart';

@LazySingleton(as: CarbonCalculateRepository)
class CarbonCalculateRepositoryImpl implements CarbonCalculateRepository {
  CarbonCalculateRepositoryImpl(this._remote);
  final CarbonCalculateRemote _remote;

  @override
  Future<Either<Exception, MonthlyPollEntity>> getMonthlyPoll() async {
    // TODO: Backend hazır olunca: return _remote.fetchQuestions();
    try {
      final poll = await _remote.getMonthlyPoll();
      return Right(poll);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, SubmitPollAnswerResponseEntity>> submitPollAnswers(
      {required String pollSetId,
      required List<PollAnswerItemEntity> answers}) async {
    try {
      final response = await _remote.submitPollAnswers(
        pollSetId: pollSetId,
        answers: answers,
      );
      return Right(response);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
