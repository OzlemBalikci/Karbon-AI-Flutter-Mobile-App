import 'package:karbon/features/auth/data/dtos/login_dto.dart';
import 'package:karbon/features/auth/data/dtos/auth_token_response.dart';
import 'package:karbon/features/auth/data/dtos/register_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/user_model.dart';
import 'package:karbon/features/auth/data/dtos/forgotpassword_dto.dart';
import 'package:karbon/features/auth/data/dtos/resetpassword_dto.dart';

abstract class AuthRemote {
  Future<AuthTokenResponse> login(LoginRequestModel request);

  Future<RegisterResponseModel> register(RegisterRequestModel request);

  Future<UserModel> getProfile();

  Future<void> forgotPassword(ForgotPasswordRequestModel request);

  Future<void> resetPassword(ResetPasswordRequestModel request);

  Future<void> logout();

  Future<void> deleteAccount();
}
