import 'package:cookie_jar/cookie_jar.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:karbon/features/auth/data/datasources/auth_remote.dart';
import 'package:karbon/features/auth/data/mapper/dto_mapper.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._remote,
    this._local,
    this._cookieJar,
    this._authLaunchLocal,
  );
  final AuthRemote _remote;
  final AuthLocal _local;
  final CookieJar _cookieJar;
  final AuthLaunchLocal _authLaunchLocal;

  Future<void> _clearClientSession() async {
    await _local.clearSession();
    await _cookieJar.deleteAll();
  }

  @override
  Future<bool> get checkSession => _local.hasSession();

  @override
  Future<Either<Exception, AppUser>> loadCurrentUser() async {
    try {
      final profile = await _remote.getProfile();
      return Right(AuthMapper.toAppUser(profile));
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, AppUser>> login({
    required String emailOrIdentityNumber,
    required String password,
  }) async {
    try {
      final loginResponse = await _remote.login(
        AuthMapper.loginRequest(
          emailOrIdentityNumber: emailOrIdentityNumber,
          password: password,
        ),
      );
      await _local.saveToken(loginResponse.accessToken);
      // Refresh token yalnızca HttpOnly cookie (login yanıtı); yerelde saklanmaz.
      final profile = await _remote.getProfile();
      return Right(AuthMapper.toAppUser(profile));
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<Either<Exception, AppUser>> register({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isKvkkApproved,
  }) async {
    try {
      // 1. Kayıt ol
      await _remote.register(
        AuthMapper.registerRequest(
          email: email,
          identityNumber: identityNumber,
          firstName: firstName,
          lastName: lastName,
          birthDate: birthDate,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isKvkkApproved: isKvkkApproved,
        ),
      );

      // 2. Kayıt başarılıysa otomatik giriş yap
      final loginResponse = await _remote.login(
        AuthMapper.loginRequest(
          emailOrIdentityNumber: email,
          password: password,
        ),
      );
      await _local.saveToken(loginResponse.accessToken);

      // 3. Profili çek ve AppUser döndür
      final profile = await _remote.getProfile();
      return Right(AuthMapper.toAppUser(profile));
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
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
      return Left(unwrapDioException(e));
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
      return Left(unwrapDioException(e));
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _remote.logout();
    } on Exception catch (_) {
      // Token zaten geçersiz olabilir; yerel temizlik yine de yapılır.
    }
    await _clearClientSession();
  }

  @override
  Future<void> clearLocalSession() async {
    await _clearClientSession();
  }

  @override
  Future<Either<Exception, void>> deleteAccount() async {
    try {
      await _remote.deleteAccount();
      await _authLaunchLocal.clearCustomFirstOpenCompleted();
      await _clearClientSession();
      return const Right(null);
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
