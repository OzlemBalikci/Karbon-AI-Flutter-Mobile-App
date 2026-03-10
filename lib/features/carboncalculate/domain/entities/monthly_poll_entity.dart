/// GET /api/v1/polls/daily -> GetMonthlyPollResponse
class MonthlyPollEntity {
  const MonthlyPollEntity({
    required this.pollSetId,
    required this.name,
    required this.description,
    required this.questions,
  });

  final String pollSetId;
  final String name;
  final String description;
  final List<PollQuestionsEntity> questions;

  factory MonthlyPollEntity.fromJson(Map<String, dynamic> json) =>
      MonthlyPollEntity(
        pollSetId: json['pollSetId'] as String? ?? '',
        name: json['name'] as String? ?? '',
        description: json['description'] as String? ?? '',
        questions: (json['questions'] as List?)
                ?.map((e) =>
                    PollQuestionsEntity.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );
}

/// PollQuestionResponse
class PollQuestionsEntity {
  const PollQuestionsEntity({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.options,
    this.carbonValue,
    this.nextPollQuestionId,
  });

  final String id;
  final String text;
  final int displayOrder;
  final List<PollQuestionsEntity> options;
  final double? carbonValue;
  final String? nextPollQuestionId;

  factory PollQuestionsEntity.fromJson(Map<String, dynamic> json) =>
      PollQuestionsEntity(
        id: json['id'] as String? ?? '',
        text: json['text'] as String? ?? '',
        displayOrder: json['displayOrder'] as int? ?? 0,
        options: (json['options'] as List?)
                ?.map((e) =>
                    PollQuestionsEntity.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        carbonValue: (json['carbonValue'] as num?)?.toDouble(),
        nextPollQuestionId: json['nextPollQuestionId'] as String?,
      );
}

///PollOptionResponse
class PollOptionsEntity {
  const PollOptionsEntity({
    required this.id,
    required this.text,
    this.carbonValue,
    this.nextPollOptionId,
  });

  final String id;
  final String text;
  final double? carbonValue;
  final String? nextPollOptionId;

  factory PollOptionsEntity.fromJson(Map<String, dynamic> json) =>
      PollOptionsEntity(
        id: json['id'] as String? ?? '',
        text: json['text'] as String? ?? '',
        carbonValue: (json['carbonValue'] as num?)?.toDouble(),
        nextPollOptionId: json['nextPollOptionId'] as String?,
      );
}
