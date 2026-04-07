/// GET `/api/v1/users/me/profile`
class UserProfileEntity {
  const UserProfileEntity({
    required this.identityNumber,
    required this.name,
    required this.surname,
    required this.birthDate,
    required this.totalPoints,
    required this.donatedTreeCount,
    required this.availableTreeCount,
  });

  final String identityNumber;
  final String name;
  final String surname;
  final DateTime birthDate;
  final double totalPoints;
  final int donatedTreeCount;
  final int availableTreeCount;
}

/// GET `/api/v1/users/me/donations` — `donations` listesindeki öğe.
class DonationItemEntity {
  const DonationItemEntity({
    required this.treeCount,
    required this.pointsSpent,
    required this.donationDate,
  });

  final int treeCount;
  final double pointsSpent;
  final DateTime donationDate;
}

/// GET `/api/v1/users/me/donations`
class DonationHistoryEntity {
  const DonationHistoryEntity({
    required this.totalDonatedTreeCount,
    required this.donations,
  });

  final int totalDonatedTreeCount;
  final List<DonationItemEntity> donations;
}

/// POST `/api/v1/users/me/donations`
class DonateTreesResultEntity {
  const DonateTreesResultEntity({
    required this.donatedTreeCount,
    required this.totalDonatedTreeCount,
  });

  final int donatedTreeCount;
  final int totalDonatedTreeCount;
}
