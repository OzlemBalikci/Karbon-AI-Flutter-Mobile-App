import 'package:karbon/features/auth/data/dtos/login_dto.dart';
import 'package:karbon/features/auth/data/dtos/login_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/user_model.dart';

abstract class AuthRemote {
  Future<LoginResponseModel> login(LoginRequestModel request);

  Future<RegisterResponseModel> register(RegisterRequestModel request);

  Future<UserModel> getProfile();

  Future<void> forgotPassword({required String phoneNumber});

  Future<void> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  });

  Future<void> logout();

  Future<void> deleteAccount();
}
