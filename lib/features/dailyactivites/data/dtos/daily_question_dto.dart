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

  static String? _optionalGuid(dynamic value) {
    if (value == null) return null;
    final s = value.toString().trim();
    return s.isEmpty ? null : s;
  }

  factory DailyQuestionOptionDto.fromJson(Map<String, dynamic> json) {
    final rawCarbon = json['carbonValue'] ?? json['score'];
    return DailyQuestionOptionDto(
      id: _optionalGuid(json['id']) ?? '',
      text: json['text'] as String? ?? '',
      carbonValue: (rawCarbon is num)
          ? rawCarbon.toDouble()
          : double.tryParse('$rawCarbon') ?? 0,
      nextQuestionId: _optionalGuid(json['nextQuestionId']),
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

  static String _guid(dynamic value) =>
      DailyQuestionOptionDto._optionalGuid(value) ?? '';

  factory DailyQuestionDto.fromJson(Map<String, dynamic> json) {
    final rawOpts = json['options'] as List<dynamic>? ?? [];
    return DailyQuestionDto(
      id: _guid(json['id']),
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
