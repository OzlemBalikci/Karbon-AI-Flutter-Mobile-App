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
    required String email,
    required String password,
  }) async {
    try {
      final model = await _remote.login(email: email, password: password);
      await _local.saveSession(model.id);
      return Right(model.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, AppUser>> register({
    required String email,
    required String tcNo,
    required String name,
    required String surname,
    required String birthDate,
    required String password,
    required String phoneNumber,
  }) async {
    try {
      final model = await _remote.register(
        email: email,
        tcNo: tcNo,
        name: name,
        surname: surname,
        birthDate: birthDate,
        password: password,
        phoneNumber: phoneNumber,
      );
      await _local.saveSession(model.id);
      return Right(model.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, AppUser>> forgotPassword({
    required String phoneNumber,
  }) async {
    try {
      final model = await _remote.forgotPassword(phoneNumber: phoneNumber);
      return Right(model.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, AppUser>> resetPassword({
    required String password,
  }) async {
    try {
      final model = await _remote.resetPassword(password: password);
      return Right(model.toEntity());
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<void> logout() async {
    await _local.clearSession();
  }
}
