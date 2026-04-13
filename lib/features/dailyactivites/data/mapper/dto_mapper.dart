import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_request_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_day_activity_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_pending_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_result_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_previous_answer_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_calendar_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_monthly_day_score_dto.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

/// Tek sorumluluk: DTO ↔ Entity dönüşümleri.
/// Hiçbir iş kuralı içermez — sadece alanları eşler.
class DailyActivityMapper {
  DailyActivityMapper._();

  // ───────────────────────────────────────────────────────────────────────────
  // DTO → Entity  (backend'den gelen veriyi domain'e taşı)
  // ───────────────────────────────────────────────────────────────────────────

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

  static DailyAnswerResultEntity toAnswerResultEntity(
    DailyAnswerResultDto dto,
  ) =>
      DailyAnswerResultEntity(
        nextQuestion: dto.nextQuestion != null
            ? toQuestionEntity(dto.nextQuestion!)
            : null,
        totalCarbonScore: dto.totalCarbonScore,
        isFlowCompleted: dto.isFlowCompleted,
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

  static DailyDayActivityEntity toDayActivityEntity(
    DailyDayActivityDto dto,
  ) =>
      DailyDayActivityEntity(
        questionText: dto.questionText,
        selectedOptionText: dto.selectedOptionText,
        score: dto.score,
        activityDate: dto.activityDate,
      );

  static DailyDayDetailEntity toDayDetailEntity(DailyDayDetailDto dto) =>
      DailyDayDetailEntity(
        date: dto.date,
        totalScore: dto.totalScore,
        activities: dto.activities.map(toDayActivityEntity).toList(),
      );

  static DailyCalendarItemEntity toCalendarItemEntity(
    DailyCalendarItemDto dto,
  ) =>
      DailyCalendarItemEntity(
        date: dto.date,
        score: dto.score,
        hasDetails: dto.hasDetails,
      );

  static DailyCalendarEntity toCalendarEntity(DailyCalendarResponseDto dto) =>
      DailyCalendarEntity(
        totalScore: dto.totalScore,
        items: dto.items.map(toCalendarItemEntity).toList(),
      );

  static DailyMonthlyDayScoreEntity toMonthlyDayScoreEntity(
    DailyMonthlyDayScoreDto dto,
  ) =>
      DailyMonthlyDayScoreEntity(
        date: dto.date,
        totalScore: dto.totalScore,
      );

  static DailyMonthlyActivitiesEntity toMonthlyActivitiesEntity(
    DailyMonthlyActivitiesDto dto,
  ) =>
      DailyMonthlyActivitiesEntity(
        totalMonthlyScore: dto.totalMonthlyScore,
        totalPeriodScore: dto.totalPeriodScore,
        dailyScores: dto.dailyScores.map(toMonthlyDayScoreEntity).toList(),
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Entity → DTO  (domain verisini backend'e gönder)
  // ───────────────────────────────────────────────────────────────────────────

  static DailyAnswerRequestDto toAnswerRequestDto(
    DailySelectedAnswerEntity entity,
  ) =>
      DailyAnswerRequestDto(
        questionId: entity.questionId,
        selectedOptionId: entity.selectedOptionId,
        userId: entity.userId,
      );
}
