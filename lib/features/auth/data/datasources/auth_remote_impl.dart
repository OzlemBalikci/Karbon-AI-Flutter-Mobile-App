import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_remote.dart';
import 'package:karbon/features/auth/data/models/user_model.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl implements AuthRemote {
  AuthRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return UserModel(
      id: 'mock_1',
      email: email,
      name: 'Mock',
      surname: 'User',
      tcNo: '',
      phoneNumber: '',
      birthDate: '',
      password: '',
    );
  }

  @override
  Future<UserModel> register({
    required String email,
    required String tcNo,
    required String name,
    required String surname,
    required String birthDate,
    required String password,
    required String phoneNumber,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return UserModel(
      id: 'mock_1',
      email: email,
      name: name,
      surname: surname,
      tcNo: tcNo,
      phoneNumber: phoneNumber,
      birthDate: birthDate,
      password: password,
    );
  }

  @override
  Future<UserModel> forgotPassword({required String phoneNumber}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return UserModel(
      id: '',
      email: '',
      name: '',
      surname: '',
      tcNo: '',
      phoneNumber: phoneNumber,
      birthDate: '',
      password: '',
    );
  }

  @override
  Future<UserModel> resetPassword({required String password}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return UserModel(
      id: '',
      email: '',
      name: '',
      surname: '',
      tcNo: '',
      phoneNumber: '',
      birthDate: '',
      password: password,
    );
  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 200));
  }
}
