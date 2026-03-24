class DailyPendingEntity {
  const DailyPendingEntity({
    required this.hasPending,
    required this.pendingCount,
  });

  final bool hasPending;
  final int pendingCount;

  factory DailyPendingEntity.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    return DailyPendingEntity(
      hasPending: data['hasPending'] as bool? ?? false,
      pendingCount: data['pendingCount'] as int? ?? 0,
    );
  }
}
