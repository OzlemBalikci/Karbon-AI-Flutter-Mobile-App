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

  factory DailyQuestionOptionEntity.fromJson(Map<String, dynamic> json) {
    return DailyQuestionOptionEntity(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      nextQuestionId: json['nextQuestionId'] as String?,
    );
  }
}
