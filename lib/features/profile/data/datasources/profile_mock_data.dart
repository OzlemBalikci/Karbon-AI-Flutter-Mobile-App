import 'package:karbon/features/profile/domain/entities/user_profile_entity.dart';

final UserProfileEntity kMockUserProfile = UserProfileEntity(
  identityNumber: '12345678901',
  name: 'Ekin Can',
  surname: 'Akın',
  birthDate: mockBirthUtc,
  totalPoints: 200000,
  donatedTreeCount: 1270,
  availableTreeCount: 1200,
);

final DateTime mockBirthUtc = DateTime.utc(1998, 2, 12);
