import 'package:equatable/equatable.dart';

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
