import 'package:karbon/features/auth/data/dtos/login_dto.dart';
import 'package:karbon/features/auth/data/dtos/login_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/user_model.dart';

abstract class AuthRemote {
  /// POST /api/v1/users/login — JWT token döner.
  Future<LoginResponseModel> login(LoginRequestModel request);

  /// POST /api/v1/users/register — Yeni kullanıcı kaydeder, UUID döner.
  Future<RegisterResponseModel> register(RegisterRequestModel request);

  /// GET /api/v1/users/me/profile — Token'dan kullanıcı profili.
  Future<UserModel> getProfile();

  /// POST /api/v1/users/password/forgot — SMS OTP kodu gönderir.
  Future<void> forgotPassword({required String phoneNumber});

  /// POST /api/v1/users/password/reset — Yeni şifre belirler.
  Future<void> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  });

  /// POST /api/v1/users/logout — refresh iptal; auth gerekli.
  Future<void> logout();
}
