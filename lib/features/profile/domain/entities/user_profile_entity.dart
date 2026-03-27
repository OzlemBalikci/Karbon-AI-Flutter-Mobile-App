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

  factory UserProfileEntity.fromJson(Map<String, dynamic> json) {
    return UserProfileEntity(
      identityNumber: json['identityNumber'] as String? ?? '',
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      birthDate: DateTime.tryParse(json['birthDate'] as String? ?? '') ??
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
      totalPoints: (json['totalPoints'] as num?)?.toDouble() ?? 0,
      donatedTreeCount: (json['donatedTreeCount'] as num?)?.toInt() ?? 0,
      availableTreeCount: (json['availableTreeCount'] as num?)?.toInt() ?? 0,
    );
  }
}
