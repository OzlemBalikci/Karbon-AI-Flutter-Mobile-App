import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:karbon/features/auth/data/datasources/auth_remote.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._remote, this._local);
  final AuthRemote _remote;
  final AuthLocal _local;

  @override
  Future<bool> get checkSession => _local.hasSession();

  @override
  Future<Either<Exception, AppUser>> login({
    required String emailOrIdentityNumber,
    required String password,
  }) async {
    try {
      final loginResponse = await _remote.login(
        emailOrIdentityNumber: emailOrIdentityNumber,
        password: password,
      );
      await _local.saveToken(loginResponse.token);
      final profile = await _remote.getProfile();
      return Right(profile.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, AppUser>> register({
    required String email,
    required String password,
    required String name,
    required String surname,
    required String identityNumber,
    required String phoneNumber,
    required String birthDate,
  }) async {
    try {
      final model = await _remote.register(
        email: email,
        password: password,
        name: name,
        surname: surname,
        identityNumber: identityNumber,
        phoneNumber: phoneNumber,
        birthDate: birthDate,
      );
      return Right(model.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, Unit>> forgotPassword({
    required String phoneNumber,
  }) async {
    try {
      await _remote.forgotPassword(phoneNumber: phoneNumber);
      return const Right(unit);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, Unit>> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    try {
      await _remote.resetPassword(
        phoneNumber: phoneNumber,
        resetCode: resetCode,
        newPassword: newPassword,
        confirmNewPassword: confirmNewPassword,
      );
      return const Right(unit);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<void> logout() async {
    await _local.clearSession();
  }
}
