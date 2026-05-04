import 'package:karbon/features/dailyactivites/data/dtos/daily_pending_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_result_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_previous_answer_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

/// mapper/daily_activities_mapper.dart

extension DailyPendingMapper on DailyPendingDto {
  DailyPendingEntity toEntity() => DailyPendingEntity(
        hasPending: hasPending,
        pendingCount: pendingCount,
      );
}

extension DailyQuestionOptionMapper on DailyQuestionOptionDto {
  DailyQuestionOptionEntity toEntity() => DailyQuestionOptionEntity(
        id: id,
        text: text,
        carbonValue: carbonValue,
        nextQuestionId: nextQuestionId,
        nextQuestion: null,
      );
}

extension DailyQuestionMapper on DailyQuestionDto {
  DailyQuestionEntity toEntity() => DailyQuestionEntity(
        id: id,
        text: text,
        displayOrder: displayOrder,
        remainingSeconds: remainingSeconds,
        options: options.map((o) => o.toEntity()).toList(),
      );
}

extension DailySelectedAnswerMapper on DailySelectedAnswerEntity {
  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'selectedOptionId': selectedOptionId,
      };
}

extension DailySubmittedAnswerLineMapper on DailySubmittedAnswerLineDto {
  DailySubmittedAnswerLineEntity toEntity() => DailySubmittedAnswerLineEntity(
        questionText: questionText,
        selectedOptionText: selectedOptionText,
        carbonValue: carbonValue,
      );
}

extension DailyAnswerResultMapper on DailyAnswerResultDto {
  DailyAnswerResultEntity toEntity() => DailyAnswerResultEntity(
        totalCarbonScore: totalCarbonScore,
        isFlowCompleted: isFlowCompleted,
        answers: answers.map((a) => a.toEntity()).toList(),
      );
}

extension DailyPreviousAnswerItemMapper on DailyPreviousAnswerItemDto {
  DailyPreviousAnswerItemEntity toEntity() => DailyPreviousAnswerItemEntity(
        questionText: questionText,
        answerText: answerText,
        score: score,
        date: date,
      );
}

extension DailyPreviousAnswersByDateMapper on DailyPreviousAnswersByDateDto {
  DailyPreviousAnswersByDateEntity toEntity() =>
      DailyPreviousAnswersByDateEntity(
        date: date,
        answers: answers.map((a) => a.toEntity()).toList(),
      );
}
