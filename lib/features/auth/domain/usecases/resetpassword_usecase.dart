import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ResetPasswordUseCase {
  ResetPasswordUseCase(this._repository);
  final AuthRepository _repository;

  /// auth.md iş kuralları:
  /// - OTP kodu tam 5 haneli rakam olmalı
  /// - Yeni şifre: min 8 karakter, büyük/küçük harf, rakam, özel karakter
  /// - confirmNewPassword yeni şifre ile eşleşmeli
  Future<Either<Exception, Unit>> call({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) {
    if (!_phoneRegex.hasMatch(phoneNumber)) {
      return Future.value(
        Left(ValidationException(
          'Geçerli bir Türk cep telefonu giriniz. (+905xxxxxxxxx)',
        )),
      );
    }

    if (!_otpRegex.hasMatch(resetCode)) {
      return Future.value(Left(ValidationException(_otpErrorMessage)));
    }

    final passwordError = _validatePasswordComplexity(newPassword);
    if (passwordError != null) {
      return Future.value(Left(ValidationException(passwordError)));
    }

    if (newPassword != confirmNewPassword) {
      return Future.value(Left(ValidationException('Şifreler eşleşmiyor.')));
    }

    return _repository.resetPassword(
      phoneNumber: phoneNumber,
      resetCode: resetCode,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );
  }

  /// Şifre: min 8 karakter, büyük harf, küçük harf, rakam, özel karakter.
  static String? _validatePasswordComplexity(String password) {
    if (password.length < 8) return 'Şifre en az 8 karakter olmalıdır.';
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Şifre en az bir büyük harf içermelidir.';
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Şifre en az bir küçük harf içermelidir.';
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Şifre en az bir rakam içermelidir.';
    }
    if (!password.contains(
        RegExp(r'[!@#$%^&*()\-_=+\[\]{};:,.<>?/\\|`~"' + "'" + r']'))) {
      return 'Şifre en az bir özel karakter içermelidir.';
    }
    return null;
  }

  /// Cubit tarafında OTP doğrulama hatasını tanımlamak için kullanılır.
  static bool isOtpError(String message) => message == _otpErrorMessage;

  static const _otpErrorMessage = 'OTP kodu 5 haneli rakamdan oluşmalıdır.';

  /// +90 ile başlayan, 5 ile devam eden 10 haneli numara: +905XXXXXXXXX
  static final _phoneRegex = RegExp(r'^\+905[0-9]{9}$');

  /// Tam 5 haneli rakam
  static final _otpRegex = RegExp(r'^\d{5}$');
}
