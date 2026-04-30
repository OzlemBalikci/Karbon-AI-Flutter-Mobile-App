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

  /// SMS kodu gönderir. Başarıysa Unit döner.
  Future<Either<AppException, Unit>> forgotPassword({
    required String phoneNumber,
    String? deviceToken,
  });

  /// SMS koduyla yeni şifre belirler. Başarıysa Unit döner.
  Future<Either<AppException, Unit>> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  });

  Future<void> logout();

  /// Sunucu [logout] çağrısı olmadan yerel access token ve API çerezlerini siler.
  /// Refresh başarısız olduğunda kullanılır (uzaktaki çıkış isteği anlamlı olmayabilir).
  Future<void> clearLocalSession();

  /// DELETE `/api/v1/users/me` — başarıda yerel oturum da temizlenir.
  Future<Either<AppException, void>> deleteAccount();
}
