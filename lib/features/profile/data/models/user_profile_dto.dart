import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

class UserProfileDto {
  const UserProfileDto({
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

  factory UserProfileDto.fromJson(Map<String, dynamic> json) {
    return UserProfileDto(
      identityNumber: json['identityNumber'] as String? ?? '',
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      birthDate: DateTime.parse(json['birthDate'] as String),
      totalPoints: (json['totalPoints'] as num?)?.toDouble() ?? 0,
      donatedTreeCount: (json['donatedTreeCount'] as num?)?.toInt() ?? 0,
      availableTreeCount: (json['availableTreeCount'] as num?)?.toInt() ?? 0,
    );
  }

  UserProfileEntity toEntity() => UserProfileEntity(
        identityNumber: identityNumber,
        name: name,
        surname: surname,
        birthDate: birthDate,
        totalPoints: totalPoints,
        donatedTreeCount: donatedTreeCount,
        availableTreeCount: availableTreeCount,
      );
}
