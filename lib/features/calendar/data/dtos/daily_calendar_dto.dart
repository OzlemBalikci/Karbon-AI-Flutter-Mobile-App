class DailyCalendarItemDto {
  const DailyCalendarItemDto({
    required this.date,
    required this.score,
    required this.hasDetails,
  });

  final String date;
  final double score;
  final bool hasDetails;

  factory DailyCalendarItemDto.fromJson(Map<String, dynamic> json) {
    return DailyCalendarItemDto(
      date: json['date'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      hasDetails: json['hasDetails'] as bool? ?? false,
    );
  }
}

class DailyCalendarResponseDto {
  const DailyCalendarResponseDto({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemDto> items;

  factory DailyCalendarResponseDto.fromJson(Map<String, dynamic> json) {
    final raw = json['items'] as List<dynamic>? ?? [];
    return DailyCalendarResponseDto(
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      items: raw
          .map((e) => DailyCalendarItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
