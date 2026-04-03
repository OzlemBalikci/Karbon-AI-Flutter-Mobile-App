import 'package:dartz/dartz.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

abstract class CarbonCalculateRepository {
  Future<Either<Exception, ActivePollSetEntity>> getActivePoll();

  Future<Either<Exception, PollSubmissionResultEntity>> savePollDraft({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });

  Future<Either<Exception, PollSubmissionResultEntity>> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });

  Future<Either<Exception, PollResultEntity>> getPollResults({
    required String pollSetId,
    required int month,
    required int year,
  });
}
