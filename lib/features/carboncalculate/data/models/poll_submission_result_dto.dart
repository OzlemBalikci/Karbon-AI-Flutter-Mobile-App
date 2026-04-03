import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

class PollSubmissionResultDto {
  const PollSubmissionResultDto({
    required this.totalCarbonScore,
    required this.calculatedTrees,
  });

  final double totalCarbonScore;
  final int calculatedTrees;

  factory PollSubmissionResultDto.fromJson(Map<String, dynamic> json) =>
      PollSubmissionResultDto(
        totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0.0,
        calculatedTrees: (json['calculatedTrees'] as num?)?.toInt() ?? 0,
      );

  PollSubmissionResultEntity toEntity() => PollSubmissionResultEntity(
        totalCarbonScore: totalCarbonScore,
        calculatedTrees: calculatedTrees,
      );
}
