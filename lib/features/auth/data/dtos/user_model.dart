/// GET /api/v1/users/me/profile endpoint'inden dönen kullanıcı profil modeli.
/// Login akışında token alındıktan sonra kullanıcı bilgilerini doldurmak için kullanılır.
class UserDto {
  const UserDto({
    required this.id,
    required this.email,
    this.name,
    this.surname,
    this.identityNumber,
    this.phoneNumber,
    this.birthDate,
    this.totalCarbonScore = 0,
    this.totalPoints = 0,
    this.lastCarbonScore = 0,
    this.donatedTreeCount = 0,
    this.lastLoginDate,
    this.isKvkkApproved = false,
    this.emailConfirmed = false,
  });

  final String id;
  final String email;
  final String? name;
  final String? surname;
  final String? identityNumber;
  final String? phoneNumber;
  final DateTime? birthDate;
  final double totalCarbonScore;
  final double totalPoints;
  final double lastCarbonScore;
  final int donatedTreeCount;
  final DateTime? lastLoginDate;
  final bool isKvkkApproved;
  final bool emailConfirmed;

  factory UserDto.fromJson(Map<String, dynamic> json) => UserDto(
        id: json['id'] as String? ?? '',
        email: json['email'] as String? ?? '',
        name: json['name'] as String?,
        surname: json['surname'] as String?,
        identityNumber: json['identityNumber'] as String?,
        phoneNumber: json['phoneNumber'] as String?,
        birthDate: json['birthDate'] != null
            ? DateTime.tryParse(json['birthDate'] as String)
            : null,
        totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0,
        totalPoints: (json['totalPoints'] as num?)?.toDouble() ?? 0,
        lastCarbonScore: (json['lastCarbonScore'] as num?)?.toDouble() ?? 0,
        donatedTreeCount: json['donatedTreeCount'] as int? ?? 0,
        lastLoginDate: json['lastLoginDate'] != null
            ? DateTime.tryParse(json['lastLoginDate'] as String)
            : null,
        isKvkkApproved: json['isKvkkApproved'] as bool? ?? false,
        emailConfirmed: json['emailConfirmed'] as bool? ?? false,
      );
}

typedef UserModel = UserDto;
