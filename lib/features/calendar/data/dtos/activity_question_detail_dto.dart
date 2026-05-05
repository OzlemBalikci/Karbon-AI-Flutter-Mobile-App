class ActivityQuestionOptionDto {
  const ActivityQuestionOptionDto({
    required this.id,
    required this.text,
    required this.carbonValue,
    this.nextQuestionId,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;

  factory ActivityQuestionOptionDto.fromJson(Map<String, dynamic> json) {
    final rawCarbon = json['carbonValue'];
    return ActivityQuestionOptionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      carbonValue: rawCarbon is num
          ? rawCarbon.toDouble()
          : double.tryParse('$rawCarbon') ?? 0,
      nextQuestionId: json['nextQuestionId'] as String?,
    );
  }
}

class ActivityQuestionDetailDto {
  const ActivityQuestionDetailDto({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.startDate,
    required this.endDate,
    required this.scheduledTime,
    required this.options,
  });

  final String id;
  final String text;
  final int displayOrder;
  final String startDate;
  final String endDate;
  final String scheduledTime;
  final List<ActivityQuestionOptionDto> options;

  factory ActivityQuestionDetailDto.fromJson(Map<String, dynamic> json) {
    final rawOptions = json['options'] as List<dynamic>? ?? const [];
    return ActivityQuestionDetailDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
      startDate: json['startDate'] as String? ?? '',
      endDate: json['endDate'] as String? ?? '',
      scheduledTime: json['scheduledTime'] as String? ?? '',
      options: rawOptions
          .whereType<Map<String, dynamic>>()
          .map(ActivityQuestionOptionDto.fromJson)
          .toList(),
    );
  }
}
