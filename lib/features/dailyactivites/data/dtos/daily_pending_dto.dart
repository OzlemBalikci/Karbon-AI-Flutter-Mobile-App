class DailyPendingDto {
  const DailyPendingDto({
    required this.hasPending,
    required this.pendingCount,
  });

  final bool hasPending;
  final int pendingCount;

  factory DailyPendingDto.fromJson(Map<String, dynamic> json) {
    return DailyPendingDto(
      hasPending: json['hasPending'] as bool? ?? false,
      pendingCount: (json['pendingCount'] as num?)?.toInt() ?? 0,
    );
  }
}
