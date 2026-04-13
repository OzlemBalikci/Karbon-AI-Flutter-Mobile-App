import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

class MonthlyTargetDto {
  const MonthlyTargetDto({
    required this.month,
    required this.year,
    required this.targetTreeCount,
    required this.donatedTreeCount,
    required this.remainingTreeCount,
    required this.progressPercent,
  });

  final int month;
  final int year;
  final int targetTreeCount;
  final int donatedTreeCount;
  final int remainingTreeCount;
  final double progressPercent;

  factory MonthlyTargetDto.fromJson(Map<String, dynamic> json) {
    return MonthlyTargetDto(
      month: (json['month'] as num?)?.toInt() ?? 0,
      year: (json['year'] as num?)?.toInt() ?? 0,
      targetTreeCount: (json['targetTreeCount'] as num?)?.toInt() ?? 0,
      donatedTreeCount: (json['donatedTreeCount'] as num?)?.toInt() ?? 0,
      remainingTreeCount: (json['remainingTreeCount'] as num?)?.toInt() ?? 0,
      progressPercent: (json['progressPercent'] as num?)?.toDouble() ?? 0,
    );
  }

  MonthlyTargetEntity toEntity() => MonthlyTargetEntity(
        month: month,
        year: year,
        targetTreeCount: targetTreeCount,
        donatedTreeCount: donatedTreeCount,
        remainingTreeCount: remainingTreeCount,
        progressPercent: progressPercent,
      );
}
