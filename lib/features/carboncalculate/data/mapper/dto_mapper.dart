import 'package:karbon/features/carboncalculate/data/dtos/active_pollset_dto.dart';
import 'package:karbon/features/carboncalculate/data/dtos/poll_option_dto.dart';
import 'package:karbon/features/carboncalculate/data/dtos/poll_question_dto.dart';
import 'package:karbon/features/carboncalculate/data/dtos/poll_submit_dto.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

class PollMapper {
  PollMapper._();

  static PollOptionEntity toOptionEntity(PollOptionDto dto) => PollOptionEntity(
        id: dto.id,
        text: dto.text,
        message: dto.message,
        carbonValue: dto.carbonValue,
        nextPollQuestionId: dto.nextPollQuestionId,
      );

  static PollQuestionEntity toQuestionEntity(PollQuestionDto dto) =>
      PollQuestionEntity(
        id: dto.id,
        text: dto.text,
        displayOrder: dto.displayOrder,
        selectedOptionId: dto.selectedOptionId,
        options: dto.options.map(toOptionEntity).toList(),
      );

  static ActivePollSetEntity toActivePollEntity(ActivePollSetDto dto) =>
      ActivePollSetEntity(
        pollSetId: dto.pollSetId,
        name: dto.name,
        description: dto.description,
        questions: dto.questions.map(toQuestionEntity).toList(),
      );

  static PollSubmissionResultEntity toScoreEntity(
          PollSubmissionResultDto dto) =>
      PollSubmissionResultEntity(
        totalCarbonScore: dto.totalCarbonScore,
        calculatedTrees: dto.calculatedTrees,
      );

  static PollAnswerRequestItemDto toAnswerRequestItem(
    PollAnswerItemEntity entity,
  ) =>
      PollAnswerRequestItemDto(
        questionId: entity.questionId,
        optionId: entity.optionId,
      );

  static SaveDraftRequestDto toDraftRequest({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) =>
      SaveDraftRequestDto(
        pollSetId: pollSetId,
        answers: answers.map(toAnswerRequestItem).toList(),
        isDraft: true,
      );

  static SubmitPollRequestDto toSubmitRequest({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) =>
      SubmitPollRequestDto(
        pollSetId: pollSetId,
        answers: answers.map(toAnswerRequestItem).toList(),
        // isDraft kasıtlı olarak eklenmedi — iş kuralı
      );
}
