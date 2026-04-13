/// POST /api/v1/polls/draft  ve  POST /api/v1/polls/answers ortak cevap satırı
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

/// POST /api/v1/polls/draft
class SaveDraftRequestDto {
  final String pollSetId;
  final List<PollAnswerRequestItemDto> answers;

  /// Dokümantasyona göre taslak kaydında isDraft: true gönderilir.
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

/// POST /api/v1/polls/answers
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
        // isDraft kasıtlı olarak dahil edilmedi
      };
}

/// POST /api/v1/polls/draft  →  data
/// POST /api/v1/polls/answers  →  data
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
