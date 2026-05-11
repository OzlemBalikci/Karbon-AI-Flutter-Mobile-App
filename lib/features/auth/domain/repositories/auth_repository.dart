import 'package:dartz/dartz.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

abstract class AuthRepository {
  Future<bool> get checkSession;

  Future<Either<AppException, AppUser>> loadCurrentUser();

  Future<Either<AppException, AppUser>> login({
    required String emailOrIdentityNumber,
    required String password,
  });

  Future<Either<AppException, AppUser>> register({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isKvkkApproved,
  });

  Future<Either<AppException, Unit>> forgotPassword({
    required String phoneNumber,
    String? deviceToken,
  });

  Future<Either<AppException, Unit>> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  });

  Future<void> logout();

  Future<void> clearLocalSession();

  Future<Either<AppException, void>> deleteAccount();
}
