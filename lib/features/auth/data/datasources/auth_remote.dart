import 'package:karbon/features/auth/data/models/user_model.dart';

abstract class AuthRemote {
  /// POST /api/v1/users/login — JWT token döner.
  Future<LoginResponseModel> login({
    required String emailOrIdentityNumber,
    required String password,
  });

  /// POST /api/v1/users/register
  Future<UserModel> register({
    required String email,
    required String password,
    required String name,
    required String surname,
    required String identityNumber,
    required String phoneNumber,
    required String birthDate,
    required bool isKvkkApproved,
  });

  /// GET /api/v1/users/profile — Token'dan kullanıcı profili.
  Future<UserModel> getProfile();

  /// POST /api/v1/users/password/forgot — SMS kodu gönderir.
  Future<void> forgotPassword({
    required String phoneNumber,
  });

  /// POST /api/v1/users/password/reset — Yeni şifre belirler.
  Future<void> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  });

  Future<void> logout();
}
