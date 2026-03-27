import 'package:karbon/features/profile/domain/entities/donation_item_entity.dart';

class DonationHistoryEntity {
  const DonationHistoryEntity({
    required this.totalDonatedTreeCount,
    required this.donations,
  });

  final int totalDonatedTreeCount;
  final List<DonationItemEntity> donations;

  factory DonationHistoryEntity.fromJson(Map<String, dynamic> json) {
    final raw = json['donations'] as List<dynamic>? ?? [];
    return DonationHistoryEntity(
      totalDonatedTreeCount:
          (json['totalDonatedTreeCount'] as num?)?.toInt() ?? 0,
      donations: raw
          .map(
            (e) => DonationItemEntity.fromJson(
              Map<String, dynamic>.from(e as Map),
            ),
          )
          .toList(),
    );
  }
}
