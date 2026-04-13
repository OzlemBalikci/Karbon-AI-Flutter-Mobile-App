import 'package:karbon/features/profile/data/dtos/donation_item_dto.dart';

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
}
