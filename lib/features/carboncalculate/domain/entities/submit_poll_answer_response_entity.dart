class SubmitPollAnswerResponseEntity {
  const SubmitPollAnswerResponseEntity({
    required this.totalCarbonScore,
    required this.calculatedTrees,
    required this.treeCount,
  });

  final double totalCarbonScore;
  final int calculatedTrees;
  final int treeCount;

  factory SubmitPollAnswerResponseEntity.fromJson(Map<String, dynamic> json) =>
      SubmitPollAnswerResponseEntity(
        totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0.0,
        calculatedTrees: json['calculatedTrees'] as int? ?? 0,
        treeCount: json['treeCount'] as int? ?? 0,
      );
}
