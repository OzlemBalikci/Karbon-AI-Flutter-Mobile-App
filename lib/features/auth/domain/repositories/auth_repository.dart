import 'package:dartz/dartz.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

abstract class AuthRepository {
  Future<bool> get checkSession;

  /// Yerel token yoksa `Right(null)`; varsa profil yüklenir (`getProfile`).
  Future<Either<Exception, AppUser?>> resolveSession();

  Future<Either<Exception, AppUser>> login({
    required String emailOrIdentityNumber,
    required String password,
  });

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
  });

  /// SMS kodu gönderir. Başarıysa Unit döner.
  Future<Either<Exception, Unit>> forgotPassword({
    required String phoneNumber,
  });

  /// SMS koduyla yeni şifre belirler. Başarıysa Unit döner.
  Future<Either<Exception, Unit>> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  });

  Future<void> logout();

  // Future<void> deleteAccount();
}
