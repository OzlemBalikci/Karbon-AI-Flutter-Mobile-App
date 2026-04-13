import 'package:equatable/equatable.dart';

/// GET `/api/v1/polls/active` — aktif anket; data katmanı DTO → bu entity eşlemesi.
class ActivePollSetEntity extends Equatable {
  const ActivePollSetEntity({
    required this.pollSetId,
    required this.name,
    this.description,
    required this.questions,
  });

  final String pollSetId;
  final String name;
  final String? description;
  final List<PollQuestionEntity> questions;
  @override
  List<Object?> get props => [pollSetId, name, description, questions];
}

/// GET `/api/v1/polls/active` — anket sorusu.
class PollQuestionEntity extends Equatable {
  const PollQuestionEntity({
    required this.id,
    required this.text,
    required this.displayOrder,
    this.selectedOptionId,
    required this.options,
  });

  final String id;
  final String text;
  final int displayOrder;
  final String? selectedOptionId;
  final List<PollOptionEntity> options;

  List<Object?> get props => [id, displayOrder, selectedOptionId];
}

/// GET `/api/v1/polls/active` — anket sorusu seçeneği.
class PollOptionEntity extends Equatable {
  const PollOptionEntity({
    required this.id,
    required this.text,
    this.message,
    required this.carbonValue,
    this.nextPollQuestionId,
  });

  final String id;
  final String text;
  final String? message;
  final double carbonValue;
  final String? nextPollQuestionId;

  @override
  List<Object?> get props => [id, text, carbonValue, nextPollQuestionId];
}

/// POST `/api/v1/polls/draft` ve `/api/v1/polls/answers` — domain cevap satırı.
/// İstek serileştirme: `PollAnswerItemRequestDto` (`poll_submission_result_dto.dart`).

class PollAnswerItemEntity extends Equatable {
  const PollAnswerItemEntity({
    required this.questionId,
    required this.optionId,
  });

  final String questionId;
  final String optionId;

  @override
  List<Object?> get props => [questionId, optionId];
}

/// POST `/api/v1/polls/draft` ve `/api/v1/polls/answers` — domain; JSON için [PollSubmissionResultEntity].
class PollSubmissionResultEntity extends Equatable {
  const PollSubmissionResultEntity({
    required this.totalCarbonScore,
    required this.calculatedTrees,
  });

  final double totalCarbonScore;
  final int calculatedTrees;

  @override
  List<Object?> get props => [totalCarbonScore, calculatedTrees];
}

/// GET `/api/v1/polls/{pollSetId}/results` — domain; JSON için [PollResultEntity].
class PollResultEntity extends Equatable {
  const PollResultEntity({
    required this.userName,
    required this.totalScore,
    required this.treeCount,
    required this.answers,
  });

  final String userName;
  final double totalScore;
  final int treeCount;
  final List<PollResultAnswerEntity> answers;

  @override
  List<Object?> get props => [userName, totalScore, treeCount];
}

/// GET `/api/v1/polls/{pollSetId}/results` — domain; JSON için [PollResultAnswerEntity].
class PollResultAnswerEntity extends Equatable {
  const PollResultAnswerEntity({
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
