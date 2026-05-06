class DailyQuestionOptionDto {
  const DailyQuestionOptionDto({
    required this.id,
    required this.text,
    required this.carbonValue,
    this.nextQuestionId,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;

  factory DailyQuestionOptionDto.fromJson(Map<String, dynamic> json) =>
      DailyQuestionOptionDto(
        id: json['id'] as String,
        text: json['text'] as String,
        carbonValue: (json['carbonValue'] as num).toDouble(),
        nextQuestionId: json['nextQuestionId'] as String?,
      );
}

class DailyQuestionDto {
  const DailyQuestionDto({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.remainingSeconds,
    required this.options,
  });

  final String id;
  final String text;
  final int displayOrder;
  final int remainingSeconds;
  final List<DailyQuestionOptionDto> options;

  factory DailyQuestionDto.fromJson(Map<String, dynamic> json) =>
      DailyQuestionDto(
        id: json['id'] as String,
        text: json['text'] as String,
        displayOrder: json['displayOrder'] as int,
        remainingSeconds: json['remainingSeconds'] as int,
        options: (json['options'] as List<dynamic>)
            .map((o) =>
                DailyQuestionOptionDto.fromJson(o as Map<String, dynamic>))
            .toList(),
      );
}
