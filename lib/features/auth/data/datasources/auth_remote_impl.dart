import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_remote.dart';
import 'package:karbon/features/auth/data/models/user_model.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl implements AuthRemote {
  AuthRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<LoginResponseModel> login({
    required String emailOrIdentityNumber,
    required String password,
  }) async {
    // TODO: final res = await _dio.post('/api/v1/users/login', data: { 'emailOrIdentityNumber': emailOrIdentityNumber, 'password': password });
    // TODO: return LoginResponseModel.fromJson(res.data);
    await Future.delayed(const Duration(milliseconds: 500));
    return const LoginResponseModel(token: 'mock_token');
  }

  @override
  Future<UserModel> register({
    required String email,
    required String password,
    required String name,
    required String surname,
    required String identityNumber,
    required String phoneNumber,
    required String birthDate,
    required bool isKvkkApproved,
  }) async {
    // TODO: final res = await _dio.post('/api/v1/users/register', data: {...});
    // TODO: return UserModel.fromJson(res.data);
    await Future.delayed(const Duration(milliseconds: 500));
    return UserModel(
      id: 'mock_1',
      email: email,
      name: name,
      surname: surname,
      identityNumber: identityNumber,
      phoneNumber: phoneNumber,
      birthDate: DateTime.tryParse(birthDate),
      isKvkkApproved: isKvkkApproved,
    );
  }

  @override
  Future<UserModel> getProfile() async {
    // TODO: final res = await _dio.get('/api/v1/users/profile');
    // TODO: return UserModel.fromJson(res.data);
    await Future.delayed(const Duration(milliseconds: 300));
    return const UserModel(
      id: 'mock_1',
      email: 'mock@example.com',
      name: 'Mock',
      surname: 'User',
    );
  }

  @override
  Future<void> forgotPassword({required String phoneNumber}) async {
    // TODO: await _dio.post('/api/v1/users/password/forgot', data: { 'phoneNumber': phoneNumber });
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<void> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    // TODO: await _dio.post('/api/v1/users/password/reset', data: { 'phoneNumber': phoneNumber, 'resetCode': resetCode, 'newPassword': newPassword, 'confirmNewPassword': confirmNewPassword });
    await Future.delayed(const Duration(milliseconds: 500));
  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 200));
  }
}
