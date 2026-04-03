import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

abstract class CarbonCalculateRemote {
  Future<ActivePollSetEntity> getActivePoll();
  Future<PollSubmissionResultEntity> savePollDraft({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });
  Future<PollSubmissionResultEntity> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });
  Future<PollResultEntity> getPollResults({
    required String pollSetId,
    required int month,
    required int year,
  });
}
