import 'package:karbon/features/auth/data/models/user_model.dart';

abstract class AuthRemote {
  Future<UserModel> login({required String email, required String password});
  Future<UserModel> register({
    required String email,
    required String password,
    required String name,
    required String surname,
    required String tcNo,
    required String phoneNumber,
    required String birthDate,
  });

  Future<UserModel> forgotPassword({
    required String phoneNumber,
  });

  Future<UserModel> resetPassword({
    required String password,
  });

  Future<void> logout();
}
