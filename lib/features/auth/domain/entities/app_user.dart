class AppUser {
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

  const AppUser({
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
}
