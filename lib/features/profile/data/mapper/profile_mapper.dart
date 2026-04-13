import 'package:karbon/features/profile/data/dtos/donate_trees_result_dto.dart';
import 'package:karbon/features/profile/data/dtos/donation_history_dto.dart';
import 'package:karbon/features/profile/data/dtos/donation_item_dto.dart';
import 'package:karbon/features/profile/data/dtos/user_profile_dto.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

class ProfileMapper {
  ProfileMapper._();

  static UserProfileEntity toUserProfileEntity(UserProfileDto dto) =>
      UserProfileEntity(
        identityNumber: dto.identityNumber,
        name: dto.name,
        surname: dto.surname,
        birthDate: dto.birthDate,
        totalPoints: dto.totalPoints,
        donatedTreeCount: dto.donatedTreeCount,
        availableTreeCount: dto.availableTreeCount,
      );

  static DonationItemEntity toDonationItemEntity(DonationItemDto dto) =>
      DonationItemEntity(
        treeCount: dto.treeCount,
        pointsSpent: dto.pointsSpent,
        donationDate: dto.donationDate,
      );

  static DonationHistoryEntity toDonationHistoryEntity(DonationHistoryDto dto) =>
      DonationHistoryEntity(
        totalDonatedTreeCount: dto.totalDonatedTreeCount,
        donations: dto.donations.map(toDonationItemEntity).toList(),
      );

  static DonateTreesResultEntity toDonateTreesResultEntity(
    DonateTreesResultDto dto,
  ) =>
      DonateTreesResultEntity(
        donatedTreeCount: dto.donatedTreeCount,
        totalDonatedTreeCount: dto.totalDonatedTreeCount,
      );
}
