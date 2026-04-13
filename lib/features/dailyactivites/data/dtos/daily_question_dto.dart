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

  factory DailyQuestionOptionDto.fromJson(Map<String, dynamic> json) {
    return DailyQuestionOptionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      nextQuestionId: json['nextQuestionId'] as String?,
    );
  }
}

class DailyQuestionDto {
  const DailyQuestionDto({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.options,
    required this.remainingSeconds,
  });

  final String id;
  final String text;
  final int displayOrder;
  final List<DailyQuestionOptionDto> options;
  final int remainingSeconds;

  factory DailyQuestionDto.fromJson(Map<String, dynamic> json) {
    final rawOpts = json['options'] as List<dynamic>? ?? [];
    return DailyQuestionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
      options: rawOpts
          .map(
              (e) => DailyQuestionOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      remainingSeconds: (json['remainingSeconds'] as num?)?.toInt() ?? 0,
    );
  }
}
