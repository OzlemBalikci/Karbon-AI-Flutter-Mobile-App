import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@injectable
class SubmitPollAnswersUseCase {
  SubmitPollAnswersUseCase(this._repository);
  final CarbonCalculateRepository _repository;

  Future<Either<AppException, PollSubmissionResultEntity>> call({
    required ActivePollSetEntity poll,
    required List<PollAnswerItemEntity> answers,
  }) {
    if (answers.length != poll.questions.length) {
      return Future.value(
        Left(
          AppException.business(
            'Gönderilen cevap sayısı anket sorularıyla eşleşmiyor.',
          ),
        ),
      );
    }
    return _repository.submitPollAnswers(
      pollSetId: poll.pollSetId,
      answers: answers,
    );
  }
}
