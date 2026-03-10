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
