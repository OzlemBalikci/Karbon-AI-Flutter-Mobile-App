import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

class GlobalTargetDto {
  const GlobalTargetDto({
    required this.targetTreeCount,
    required this.donatedTreeCount,
    required this.remainingTreeCount,
    required this.progressPercent,
  });

  final int targetTreeCount;
  final int donatedTreeCount;
  final int remainingTreeCount;
  final double progressPercent;

  factory GlobalTargetDto.fromJson(Map<String, dynamic> json) {
    return GlobalTargetDto(
      targetTreeCount: (json['targetTreeCount'] as num?)?.toInt() ?? 0,
      donatedTreeCount: (json['donatedTreeCount'] as num?)?.toInt() ?? 0,
      remainingTreeCount: (json['remainingTreeCount'] as num?)?.toInt() ?? 0,
      progressPercent: (json['progressPercent'] as num?)?.toDouble() ?? 0,
    );
  }

  GlobalTargetEntity toEntity() => GlobalTargetEntity(
        targetTreeCount: targetTreeCount,
        donatedTreeCount: donatedTreeCount,
        remainingTreeCount: remainingTreeCount,
        progressPercent: progressPercent,
      );
}
