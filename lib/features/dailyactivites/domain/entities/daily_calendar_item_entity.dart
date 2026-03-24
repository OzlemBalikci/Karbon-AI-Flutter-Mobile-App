import 'package:intl/intl.dart';

class DailyCalendarItemEntity {
  const DailyCalendarItemEntity({
    required this.date,
    required this.score,
    required this.hasDetails,
  });

  final String date;
  final double score;
  final bool hasDetails;

  factory DailyCalendarItemEntity.fromJson(Map<String, dynamic> json) {
    return DailyCalendarItemEntity(
      date: json['date'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      hasDetails: json['hasDetails'] as bool? ?? false,
    );
  }

  String get formattedDate =>
      DateFormat.yMMMMd('tr').format(DateTime.parse(date));
}
