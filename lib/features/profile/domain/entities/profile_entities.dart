import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
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
  @override
  List<Object?> get props => [
        identityNumber,
        name,
        surname,
        birthDate,
        totalPoints,
        donatedTreeCount,
        availableTreeCount
      ];
}

class DonationItemEntity extends Equatable {
  const DonationItemEntity({
    required this.treeCount,
    required this.pointsSpent,
    required this.donationDate,
  });

  final int treeCount;
  final double pointsSpent;
  final DateTime donationDate;
  @override
  List<Object?> get props => [treeCount, pointsSpent, donationDate];
}

class DonationHistoryEntity extends Equatable {
  const DonationHistoryEntity({
    required this.totalDonatedTreeCount,
    required this.donations,
  });

  final int totalDonatedTreeCount;
  final List<DonationItemEntity> donations;
  @override
  List<Object?> get props => [totalDonatedTreeCount, donations];
}

class DonateTreesResultEntity extends Equatable {
  const DonateTreesResultEntity({
    required this.donatedTreeCount,
    required this.totalDonatedTreeCount,
  });

  final int donatedTreeCount;
  final int totalDonatedTreeCount;
  @override
  List<Object?> get props => [donatedTreeCount, totalDonatedTreeCount];
}
