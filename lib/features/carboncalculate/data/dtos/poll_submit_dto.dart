class PollAnswerRequestItemDto {
  final String questionId;
  final String optionId;

  const PollAnswerRequestItemDto({
    required this.questionId,
    required this.optionId,
  });

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'optionId': optionId,
      };
}

class SaveDraftRequestDto {
  final String pollSetId;
  final List<PollAnswerRequestItemDto> answers;

  final bool isDraft;

  const SaveDraftRequestDto({
    required this.pollSetId,
    required this.answers,
    this.isDraft = true,
  });

  Map<String, dynamic> toJson() => {
        'pollSetId': pollSetId,
        'answers': answers.map((a) => a.toJson()).toList(),
        'isDraft': isDraft,
      };
}

class SubmitPollRequestDto {
  final String pollSetId;
  final List<PollAnswerRequestItemDto> answers;

  const SubmitPollRequestDto({
    required this.pollSetId,
    required this.answers,
  });

  Map<String, dynamic> toJson() => {
        'pollSetId': pollSetId,
        'answers': answers.map((a) => a.toJson()).toList(),
      };
}

class PollSubmissionResultDto {
  const PollSubmissionResultDto({
    required this.totalCarbonScore,
    required this.calculatedTrees,
  });

  final double totalCarbonScore;
  final int calculatedTrees;

  factory PollSubmissionResultDto.fromJson(Map<String, dynamic> json) =>
      PollSubmissionResultDto(
        totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0.0,
        calculatedTrees: (json['calculatedTrees'] as num?)?.toInt() ?? 0,
      );
}
