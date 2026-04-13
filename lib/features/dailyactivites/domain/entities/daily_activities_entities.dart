import 'package:intl/intl.dart';
import 'package:equatable/equatable.dart';

/// GET `/api/v1/daily-activities?status=pending` — bekleyen soru özeti.
class DailyPendingEntity extends Equatable {
  const DailyPendingEntity({
    required this.hasPending,
    required this.pendingCount,
  });

  final bool hasPending;
  final int pendingCount;

  @override
  List<Object?> get props => [hasPending, pendingCount];
}

/// GET `/api/v1/daily-activities/questions` — soru seçeneği.
class DailyQuestionOptionEntity extends Equatable {
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

  @override
  List<Object?> get props => [id, text, carbonValue, nextQuestionId];
}

/// GET `/api/v1/daily-activities/questions` — günlük soru.
class DailyQuestionEntity extends Equatable {
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

  @override
  List<Object?> get props =>
      [id, text, displayOrder, options, remainingSeconds];
}

/// POST `/api/v1/daily-activities/answers` — gönderilen istek gövdesi (`questionId`, `selectedOptionId`, `userId`).
class DailySelectedAnswerEntity extends Equatable {
  const DailySelectedAnswerEntity({
    required this.questionId,
    required this.selectedOptionId,
    required this.userId,
  });

  final String questionId;
  final String selectedOptionId;
  final String userId;

  @override
  List<Object?> get props => [questionId, selectedOptionId, userId];
}

/// POST `/api/v1/daily-activities/answers` — cevap sonucu (akış / skor).
class DailyAnswerResultEntity extends Equatable {
  const DailyAnswerResultEntity({
    this.nextQuestion,
    required this.totalCarbonScore,
    required this.isFlowCompleted,
  });

  final double totalCarbonScore;
  final bool isFlowCompleted;
  final DailyQuestionEntity? nextQuestion;

  @override
  List<Object?> get props => [totalCarbonScore, isFlowCompleted, nextQuestion];
}

/// GET `/api/v1/daily-activities/calendar` — takvim günü özeti.
class DailyCalendarItemEntity extends Equatable {
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

  @override
  List<Object?> get props => [date, score, hasDetails];
}

/// GET `/api/v1/daily-activities/calendar` — takvim özeti.
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

/// GET `/api/v1/daily-activities?date=` — gün içi aktivite satırı.
class DailyDayActivityEntity extends Equatable {
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

  @override
  List<Object?> get props =>
      [questionText, selectedOptionText, score, activityDate];
}

/// GET `/api/v1/daily-activities?date=` — seçilen günün detayı.
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

/// GET `/api/v1/daily-activities/previous-answers` — önceki cevaplar (son cevaplanan gün).
class DailyPreviousAnswerItemEntity extends Equatable {
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

  @override
  List<Object?> get props => [questionText, answerText, score, date];
}

/// GET `/api/v1/daily-activities/previous-answers` — tarihe göre gruplanmış önceki cevaplar.
class DailyPreviousAnswersByDateEntity extends Equatable {
  const DailyPreviousAnswersByDateEntity({
    required this.date,
    required this.answers,
  });

  final String date;
  final List<DailyPreviousAnswerItemEntity> answers;

  @override
  List<Object?> get props => [date, answers];
}

/// GET `/api/v1/daily-activities/monthly` — aylık / dönem özeti.
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

/// GET `/api/v1/daily-activities/monthly` — aylık aktiviteler (Tümünü Gör).
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
