import 'package:karbon/features/profile/data/models/donation_item_dto.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

class DonationHistoryDto {
  const DonationHistoryDto({
    required this.totalDonatedTreeCount,
    required this.donations,
  });

  final int totalDonatedTreeCount;
  final List<DonationItemDto> donations;

  factory DonationHistoryDto.fromJson(Map<String, dynamic> json) {
    final raw = json['donations'] as List<dynamic>? ?? [];
    return DonationHistoryDto(
      totalDonatedTreeCount:
          (json['totalDonatedTreeCount'] as num?)?.toInt() ?? 0,
      donations: raw
          .map((e) => DonationItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  DonationHistoryEntity toEntity() => DonationHistoryEntity(
        totalDonatedTreeCount: totalDonatedTreeCount,
        donations: donations.map((e) => e.toEntity()).toList(),
      );
}
