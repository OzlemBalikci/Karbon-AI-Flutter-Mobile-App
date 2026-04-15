import 'package:dartz/dartz.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

abstract class AuthRepository {
  /// Yerelde geçerli access token var mı (depo kontrolü).
  Future<bool> get checkSession;

  /// **Önkoşul:** [checkSession] true olmalı. GET `/users/me/profile` ile kullanıcıyü yükler;
  /// 401 durumunda [TokenRefreshInterceptor] devreye girer. Oturum kontrolü için [CheckSessionUseCase] kullanın.
  Future<Either<Exception, AppUser>> loadCurrentUser();

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

  /// Sunucu [logout] çağrısı olmadan yerel access token ve API çerezlerini siler.
  /// Refresh başarısız olduğunda kullanılır (uzaktaki çıkış isteği anlamlı olmayabilir).
  Future<void> clearLocalSession();

  /// DELETE `/api/v1/users/me` — başarıda yerel oturum da temizlenir.
  Future<Either<Exception, void>> deleteAccount();
}
