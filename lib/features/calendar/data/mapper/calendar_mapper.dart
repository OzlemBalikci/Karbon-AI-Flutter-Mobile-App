import 'package:karbon/features/calendar/data/dtos/activity_question_detail_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_calendar_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_day_detail_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_monthly_day_score_dto.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

class CalendarMapper {
  CalendarMapper._();

  static DailyDayActivityEntity toDayActivityEntity(DailyDayActivityDto dto) =>
      DailyDayActivityEntity(
        activityQuestionId: dto.activityQuestionId,
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

  static ActivityQuestionOptionEntity toActivityQuestionOptionEntity(
    ActivityQuestionOptionDto dto,
  ) =>
      ActivityQuestionOptionEntity(
        id: dto.id,
        text: dto.text,
        carbonValue: dto.carbonValue,
        nextQuestionId: dto.nextQuestionId,
      );

  static ActivityQuestionDetailEntity toActivityQuestionDetailEntity(
    ActivityQuestionDetailDto dto,
  ) =>
      ActivityQuestionDetailEntity(
        id: dto.id,
        text: dto.text,
        displayOrder: dto.displayOrder,
        startDate: dto.startDate,
        endDate: dto.endDate,
        scheduledTime: dto.scheduledTime,
        options: dto.options.map(toActivityQuestionOptionEntity).toList(),
      );
}
