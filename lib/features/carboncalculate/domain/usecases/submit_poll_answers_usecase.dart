import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@injectable
class SubmitPollAnswersUseCase {
  SubmitPollAnswersUseCase(this._repository);
  final CarbonCalculateRepository _repository;

  Future<Either<Exception, PollSubmissionResultEntity>> call({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) =>
      _repository.submitPollAnswers(
        pollSetId: pollSetId,
        answers: answers,
      );
}
