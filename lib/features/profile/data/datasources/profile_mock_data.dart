import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

//mock kaldırılacak.
final DateTime mockBirthUtc = DateTime.utc(1998, 2, 12);

final UserProfileEntity kMockUserProfile = UserProfileEntity(
  identityNumber: '12345678901',
  name: 'Ekin Can',
  surname: 'Akın',
  birthDate: mockBirthUtc,
  totalPoints: 200000.0,
  donatedTreeCount: 1270,
  availableTreeCount: 1200,
);

final DonationHistoryEntity kMockDonationHistory = DonationHistoryEntity(
  totalDonatedTreeCount: 1270,
  donations: [
    DonationItemEntity(
      treeCount: 10,
      pointsSpent: 5000.0,
      donationDate: DateTime.utc(2023, 12, 20),
    ),
    DonationItemEntity(
      treeCount: 10,
      pointsSpent: 5000.0,
      donationDate: DateTime.utc(2023, 12, 8),
    ),
  ],
);

const DonateTreesResultEntity kMockDonateTreesResult = DonateTreesResultEntity(
  donatedTreeCount: 1200,
  totalDonatedTreeCount: 2470,
);
