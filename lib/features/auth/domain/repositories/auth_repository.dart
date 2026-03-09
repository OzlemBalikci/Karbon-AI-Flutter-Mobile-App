import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<bool> get checkSession;

  Future<Either<Exception, AppUser>> login({
    required String email,
    required String password,
  });

  Future<Either<Exception, AppUser>> register({
    required String email,
    required String tcNo,
    required String name,
    required String surname,
    required String birthDate,
    required String password,
    required String phoneNumber,
  });

  Future<Either<Exception, AppUser>> forgotPassword({
    required String phoneNumber,
  });

  Future<Either<Exception, AppUser>> resetPassword({
    required String password,
  });

  Future<void> logout();
}
