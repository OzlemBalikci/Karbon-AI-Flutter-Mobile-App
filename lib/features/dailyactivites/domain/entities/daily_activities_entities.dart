import 'package:intl/intl.dart';

/// GET `/api/v1/daily-activities/pending` — domain; JSON için [DailyPendingEntity].
class DailyPendingEntity {
  const DailyPendingEntity({
    required this.hasPending,
    required this.pendingCount,
  });

  final bool hasPending;
  final int pendingCount;
}

/// GET `/api/v1/daily-activities/questions` — domain; JSON için [DailyQuestionEntity].
class DailyQuestionOptionEntity {
  const DailyQuestionOptionEntity({
    required this.id,
    required this.text,
    required this.carbonValue,
    this.nextQuestionId,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;
}

/// GET `/api/v1/daily-activities/questions` — domain; JSON için [DailyQuestionEntity].
class DailyQuestionEntity {
  const DailyQuestionEntity({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.options,
    required this.remainingSeconds,
  });

  final String id;
  final String text;
  final int displayOrder;
  final List<DailyQuestionOptionEntity> options;
  final int remainingSeconds;
}

/// POST `/api/v1/daily-activities/answers` — domain; JSON için [DailyAnswerResultEntity].
class DailyAnswerResultEntity {
  const DailyAnswerResultEntity({
    required this.totalCarbonScore,
    required this.isFlowCompleted,
    this.nextQuestion,
  });

  final double totalCarbonScore;
  final bool isFlowCompleted;
  final DailyQuestionEntity? nextQuestion;
}

/// GET `/api/v1/daily-activities/calendar` — domain; JSON için [DailyCalendarEntity].
class DailyCalendarItemEntity {
  const DailyCalendarItemEntity({
    required this.date,
    required this.score,
    required this.hasDetails,
  });

  final String date;
  final double score;
  final bool hasDetails;

  String get formattedDate =>
      DateFormat.yMMMMd('tr').format(DateTime.parse(date));
}

/// GET `/api/v1/daily-activities/calendar` — domain; JSON için [DailyCalendarEntity].
class DailyCalendarEntity {
  const DailyCalendarEntity({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemEntity> items;
}

/// GET `/api/v1/daily-activities/details` — domain; JSON için [DailyDayDetailEntity].
class DailyDayActivityEntity {
  const DailyDayActivityEntity({
    required this.questionText,
    required this.selectedOptionText,
    required this.score,
    required this.activityDate,
  });

  final String questionText;
  final String selectedOptionText;
  final double score;
  final String activityDate;
}

/// GET `/api/v1/daily-activities/details` — domain; JSON için [DailyDayDetailEntity].
class DailyDayDetailEntity {
  const DailyDayDetailEntity({
    required this.date,
    required this.totalScore,
    required this.activities,
  });

  final String date;
  final double totalScore;
  final List<DailyDayActivityEntity> activities;
}

/// Kırılımlı akış (presentation) — domain; JSON için [BranchStep].
class BranchStep {
  const BranchStep({
    required this.question,
    this.selectedOption,
  });

  final DailyQuestionEntity question;
  final DailyQuestionOptionEntity? selectedOption;

  bool get isAnswered => selectedOption != null;

  BranchStep copyWithOption(DailyQuestionOptionEntity option) =>
      BranchStep(question: question, selectedOption: option);

  @override
  bool operator ==(Object other) =>
      other is BranchStep &&
      other.question.id == question.id &&
      other.selectedOption?.id == selectedOption?.id;

  @override
  int get hashCode => Object.hash(question.id, selectedOption?.id);
}
