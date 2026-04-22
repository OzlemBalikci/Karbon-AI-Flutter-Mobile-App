import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_remote.dart';
import 'package:karbon/features/auth/data/dtos/forgotpassword_dto.dart';
import 'package:karbon/features/auth/data/dtos/login_dto.dart';
import 'package:karbon/features/auth/data/dtos/login_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_dto.dart';
import 'package:karbon/features/auth/data/dtos/register_response_dto.dart';
import 'package:karbon/features/auth/data/dtos/resetpassword_dto.dart';
import 'package:karbon/features/auth/data/dtos/user_model.dart';
import 'package:karbon/core/networks/response_ext.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl implements AuthRemote {
  AuthRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    final res = await _dio.post<dynamic>(
      '/api/v1/users/login',
      data: request.toJson(),
    );
    return LoginResponseModel.fromJson(res.dataMap());
  }

  @override
  Future<RegisterResponseModel> register(RegisterRequestModel request) async {
    final res = await _dio.post<dynamic>(
      'api/v1/users/register',
      data: request.toJson(),
    );
    return RegisterResponseModel.fromData(res.data);
  }

  @override
  Future<UserModel> getProfile() async {
    final res = await _dio.get<dynamic>(
      '/api/v1/users/me/profile',
    );
    return UserModel.fromJson(res.dataMap());
  }

  @override
  Future<void> forgotPassword({required String phoneNumber}) async {
    final request = ForgotPasswordRequestModel(phoneNumber: phoneNumber);
    await _dio.post<dynamic>(
      '/api/v1/users/password/forgot',
      data: request.toJson(),
    );
  }

  @override
  Future<void> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    final request = ResetPasswordRequestModel(
      phoneNumber: phoneNumber,
      resetCode: resetCode,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );
    await _dio.post<dynamic>(
      '/api/v1/users/password/reset',
      data: request.toJson(),
    );
  }

  @override
  Future<void> logout() async {
    await _dio.post<dynamic>('/api/v1/users/logout');
  }

  @override
  Future<void> deleteAccount() async {
    await _dio.delete<dynamic>('/api/v1/users/me');
  }
}
