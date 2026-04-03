/// GET `/api/v1/polls/active` — domain; JSON için [ActivePollSetModel].
class ActivePollSetEntity {
  const ActivePollSetEntity({
    required this.pollSetId,
    required this.name,
    required this.description,
    required this.questions,
  });

  final String pollSetId;
  final String name;
  final String description;
  final List<PollQuestionEntity> questions;
}

/// GET `/api/v1/polls/active` — anket sorusu.
class PollQuestionEntity {
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

  /// Taslak yoksa `null`.
  final String? selectedOptionId;
  final List<PollOptionEntity> options;
}

/// GET `/api/v1/polls/active` — anket sorusu seçeneği.
class PollOptionEntity {
  const PollOptionEntity({
    required this.id,
    required this.text,
    required this.message,
    required this.carbonValue,
    this.nextPollQuestionId,
  });

  final String id;
  final String text;
  final String message;
  final double carbonValue;
  final String? nextPollQuestionId;
}

/// POST `/api/v1/polls/draft` ve `/api/v1/polls/answers` — domain; JSON için [PollAnswerItemEntity].
class PollAnswerItemEntity {
  const PollAnswerItemEntity({
    required this.questionId,
    required this.optionId,
  });

  final String questionId;
  final String optionId;

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'optionId': optionId,
      };
}

class PollSubmissionResultEntity {
  const PollSubmissionResultEntity({
    required this.totalCarbonScore,
    required this.calculatedTrees,
  });

  final double totalCarbonScore;
  final int calculatedTrees;
}

/// GET `/api/v1/polls/{pollSetId}/results` — domain; JSON için [PollResultEntity].
class PollResultEntity {
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
}

class PollResultAnswerEntity {
  const PollResultAnswerEntity({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;
}
