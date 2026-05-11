import 'package:equatable/equatable.dart';
import 'package:karbon/core/utils/formatters.dart';

class DailyDayActivityEntity extends Equatable {
  const DailyDayActivityEntity({
    this.activityQuestionId,
    required this.questionText,
    required this.selectedOptionText,
    required this.score,
    required this.activityDate,
  });

  final String? activityQuestionId;
  final String questionText;
  final String selectedOptionText;
  final double score;
  final String activityDate;

  @override
  List<Object?> get props => [
        activityQuestionId,
        questionText,
        selectedOptionText,
        score,
        activityDate
      ];
}

class DailyDayDetailEntity extends Equatable {
  const DailyDayDetailEntity({
    required this.date,
    required this.totalScore,
    required this.activities,
  });

  final String date;
  final double totalScore;
  final List<DailyDayActivityEntity> activities;

  @override
  List<Object?> get props => [date, totalScore, activities];
}

class DailyCalendarItemEntity extends Equatable {
  const DailyCalendarItemEntity({
    required this.date,
    required this.score,
    required this.hasDetails,
  });

  final String date;
  final double score;
  final bool hasDetails;

  String get formattedDate => formatFullDate(DateTime.parse(date));

  @override
  List<Object?> get props => [date, score, hasDetails];
}

class DailyCalendarEntity extends Equatable {
  const DailyCalendarEntity({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemEntity> items;

  @override
  List<Object?> get props => [totalScore, items];
}

class DailyMonthlyDayScoreEntity extends Equatable {
  const DailyMonthlyDayScoreEntity({
    required this.date,
    required this.totalScore,
  });

  final String date;
  final double totalScore;

  @override
  List<Object?> get props => [date, totalScore];
}

class DailyMonthlyActivitiesEntity extends Equatable {
  const DailyMonthlyActivitiesEntity({
    required this.totalMonthlyScore,
    required this.totalPeriodScore,
    required this.dailyScores,
  });

  final double totalMonthlyScore;
  final double totalPeriodScore;
  final List<DailyMonthlyDayScoreEntity> dailyScores;

  @override
  List<Object?> get props => [totalMonthlyScore, totalPeriodScore, dailyScores];
}

class ActivityQuestionOptionEntity extends Equatable {
  const ActivityQuestionOptionEntity({
    required this.id,
    required this.text,
    required this.carbonValue,
    this.nextQuestionId,
    this.nextQuestion,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;
  final ActivityQuestionDetailEntity? nextQuestion;

  @override
  List<Object?> get props =>
      [id, text, carbonValue, nextQuestionId, nextQuestion];
}

class ActivityQuestionDetailEntity extends Equatable {
  const ActivityQuestionDetailEntity({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.startDate,
    required this.endDate,
    required this.scheduledTime,
    required this.options,
  });

  final String id;
  final String text;
  final int displayOrder;
  final String startDate;
  final String endDate;
  final String scheduledTime;
  final List<ActivityQuestionOptionEntity> options;

  @override
  List<Object?> get props => [
        id,
        text,
        displayOrder,
        startDate,
        endDate,
        scheduledTime,
        options,
      ];
}
