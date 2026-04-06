import 'package:intl/intl.dart';

/// GET `/api/v1/daily-activities?status=pending` — bekleyen soru özeti.
class DailyPendingEntity {
  const DailyPendingEntity({
    required this.hasPending,
    required this.pendingCount,
  });

  final bool hasPending;
  final int pendingCount;
}

/// GET `/api/v1/daily-activities/questions` — soru seçeneği.
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

/// GET `/api/v1/daily-activities/questions` — günlük soru.
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

/// POST `/api/v1/daily-activities/answers` — cevap sonucu (akış / skor).
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

/// GET `/api/v1/daily-activities/calendar` — takvim günü özeti.
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

/// GET `/api/v1/daily-activities/calendar` — takvim özeti.
class DailyCalendarEntity {
  const DailyCalendarEntity({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemEntity> items;
}

/// GET `/api/v1/daily-activities?date=` — gün içi aktivite satırı.
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

/// GET `/api/v1/daily-activities?date=` — seçilen günün detayı.
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

/// GET `/api/v1/daily-activities/previous-answers` — önceki cevaplar (son cevaplanan gün).
class DailyPreviousAnswerItemEntity {
  const DailyPreviousAnswerItemEntity({
    required this.questionText,
    required this.answerText,
    required this.score,
    required this.date,
  });

  final String questionText;
  final String answerText;
  final double score;
  final String date;
}

/// GET `/api/v1/daily-activities/previous-answers` — tarihe göre gruplanmış önceki cevaplar.
class DailyPreviousAnswersByDateEntity {
  const DailyPreviousAnswersByDateEntity({
    required this.date,
    required this.answers,
  });

  final String date;
  final List<DailyPreviousAnswerItemEntity> answers;
}

/// GET `/api/v1/daily-activities/monthly` — aylık / dönem özeti.
class DailyMonthlyDayScoreEntity {
  const DailyMonthlyDayScoreEntity({
    required this.date,
    required this.totalScore,
  });

  final String date;
  final double totalScore;
}

/// GET `/api/v1/daily-activities/monthly` — aylık aktiviteler (Tümünü Gör).
class DailyMonthlyActivitiesEntity {
  const DailyMonthlyActivitiesEntity({
    required this.totalMonthlyScore,
    required this.totalPeriodScore,
    required this.dailyScores,
  });

  final double totalMonthlyScore;
  final double totalPeriodScore;
  final List<DailyMonthlyDayScoreEntity> dailyScores;
}

/// Kırılımlı akış (presentation).
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
