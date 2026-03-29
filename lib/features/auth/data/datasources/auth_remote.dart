import 'package:karbon/features/auth/data/models/login_request_model.dart';
import 'package:karbon/features/auth/data/models/login_response_model.dart';
import 'package:karbon/features/auth/data/models/register_request_model.dart';
import 'package:karbon/features/auth/data/models/register_response_model.dart';
import 'package:karbon/features/auth/data/models/user_model.dart';

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

  Future<void> logout();
}
