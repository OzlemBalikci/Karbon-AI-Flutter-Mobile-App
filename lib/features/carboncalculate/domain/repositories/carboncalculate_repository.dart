import 'package:dartz/dartz.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

abstract class CarbonCalculateRepository {
  Future<Either<AppException, ActivePollSetEntity>> getActivePoll();

  Future<Either<AppException, PollSubmissionResultEntity>> savePollDraft({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });

  Future<Either<AppException, PollSubmissionResultEntity>> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });

  Future<Either<AppException, PollResultEntity>> getPollResults({
    required String pollSetId,
    required int month,
    required int year,
  });
}
