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
    this.nextQuestion,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;
  final DailyQuestionEntity? nextQuestion;

  @override
  List<Object?> get props =>
      [id, text, carbonValue, nextQuestionId, nextQuestion];
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

/// POST `/api/v1/daily-activities/answers` — `answers[]` içindeki tek satır.
class DailySelectedAnswerEntity extends Equatable {
  const DailySelectedAnswerEntity({
    required this.questionId,
    required this.selectedOptionId,
  });

  final String questionId;
  final String selectedOptionId;

  @override
  List<Object?> get props => [questionId, selectedOptionId];
}

/// POST yanıtındaki `answers[]` elemanı.
class DailySubmittedAnswerLineEntity extends Equatable {
  const DailySubmittedAnswerLineEntity({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;

  @override
  List<Object?> get props => [questionText, selectedOptionText, carbonValue];
}

/// POST `/api/v1/daily-activities/answers` — `data` içi özet.
class DailyAnswerResultEntity extends Equatable {
  const DailyAnswerResultEntity({
    required this.totalCarbonScore,
    required this.isFlowCompleted,
    required this.answers,
  });

  final double totalCarbonScore;
  final bool isFlowCompleted;
  final List<DailySubmittedAnswerLineEntity> answers;

  @override
  List<Object?> get props => [totalCarbonScore, isFlowCompleted, answers];
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
