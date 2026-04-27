import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_request_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_pending_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_result_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_previous_answer_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

/// DTO ↔ Entity alan eşlemesi.
class DailyActivityMapper {
  DailyActivityMapper._();

  static DailyPendingEntity toPendingEntity(DailyPendingDto dto) =>
      DailyPendingEntity(
        hasPending: dto.hasPending,
        pendingCount: dto.pendingCount,
      );

  static DailyQuestionOptionEntity toOptionEntity(
    DailyQuestionOptionDto dto,
  ) =>
      DailyQuestionOptionEntity(
        id: dto.id,
        text: dto.text,
        carbonValue: dto.carbonValue,
        nextQuestionId: dto.nextQuestionId,
      );

  static DailyQuestionEntity toQuestionEntity(DailyQuestionDto dto) =>
      DailyQuestionEntity(
        id: dto.id,
        text: dto.text,
        displayOrder: dto.displayOrder,
        remainingSeconds: dto.remainingSeconds,
        options: dto.options.map(toOptionEntity).toList(),
      );

  static DailySubmittedAnswerLineEntity toSubmittedAnswerLineEntity(
    DailySubmittedAnswerLineDto dto,
  ) =>
      DailySubmittedAnswerLineEntity(
        questionText: dto.questionText,
        selectedOptionText: dto.selectedOptionText,
        carbonValue: dto.carbonValue,
      );

  static DailyAnswerResultEntity toAnswerResultEntity(
    DailyAnswerResultDto dto,
  ) =>
      DailyAnswerResultEntity(
        totalCarbonScore: dto.totalCarbonScore,
        isFlowCompleted: dto.isFlowCompleted,
        answers: dto.answers.map(toSubmittedAnswerLineEntity).toList(),
      );

  static DailyPreviousAnswerItemEntity toPreviousAnswerItemEntity(
    DailyPreviousAnswerItemDto dto,
  ) =>
      DailyPreviousAnswerItemEntity(
        questionText: dto.questionText,
        answerText: dto.answerText,
        score: dto.score,
        date: dto.date,
      );

  static DailyPreviousAnswersByDateEntity toPreviousAnswersByDateEntity(
    DailyPreviousAnswersByDateDto dto,
  ) =>
      DailyPreviousAnswersByDateEntity(
        date: dto.date,
        answers: dto.answers.map(toPreviousAnswerItemEntity).toList(),
      );

  static DailyAnswerItemRequestDto toAnswerItemRequestDto(
    DailySelectedAnswerEntity entity,
  ) =>
      DailyAnswerItemRequestDto(
        questionId: entity.questionId,
        selectedOptionId: entity.selectedOptionId,
      );
}
