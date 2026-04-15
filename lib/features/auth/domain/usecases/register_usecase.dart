import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class RegisterUseCase {
  RegisterUseCase(this._repository);
  final AuthRepository _repository;

  /// auth.md iş kuralları:
  /// - Geçerli e-posta formatı
  /// - 11 haneli TC kimlik numarası
  /// - Geçerli Türk cep telefonu (+905xxxxxxxxx)
  /// - Şifre: min 8 karakter, büyük/küçük harf, rakam, özel karakter
  /// - confirmPassword şifre ile eşleşmeli
  /// - KVKK onayı zorunlu
  Future<Either<Exception, AppUser>> call({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isKvkkApproved,
  }) {
    final error = _validate(
      email: email,
      identityNumber: identityNumber,
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
      phoneNumber: phoneNumber,
      password: password,
      confirmPassword: confirmPassword,
      isKvkkApproved: isKvkkApproved,
    );

    if (error != null) return Future.value(Left(ValidationException(error)));

    return _repository.register(
      email: email,
      identityNumber: identityNumber,
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
      phoneNumber: phoneNumber,
      password: password,
      confirmPassword: confirmPassword,
      isKvkkApproved: isKvkkApproved,
    );
  }

  String? _validate({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isKvkkApproved,
  }) {
    if (!_emailRegex.hasMatch(email.trim())) {
      return 'Geçerli bir e-posta adresi giriniz.';
    }
    if (!_tcRegex.hasMatch(identityNumber)) {
      return '11 haneli geçerli bir TC kimlik numarası giriniz.';
    }
    if (firstName.trim().isEmpty) {
      return 'Ad boş olamaz.';
    }
    if (lastName.trim().isEmpty) {
      return 'Soyad boş olamaz.';
    }
    if (birthDate.isEmpty) {
      return 'Doğum tarihi boş olamaz.';
    }
    if (!_phoneRegex.hasMatch(phoneNumber)) {
      return 'Geçerli bir Türk cep telefonu giriniz. (+905xxxxxxxxx)';
    }
    final passwordError = _validatePasswordComplexity(password);
    if (passwordError != null) return passwordError;

    if (password != confirmPassword) {
      return 'Şifreler eşleşmiyor.';
    }
    if (!isKvkkApproved) {
      return 'Devam etmek için KVKK onayı zorunludur.';
    }
    return null;
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

  static final _emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  static final _tcRegex = RegExp(r'^\d{11}$');

  /// +90 ile başlayan, 5 ile devam eden 10 haneli numara: +905XXXXXXXXX
  static final _phoneRegex = RegExp(r'^\+905[0-9]{9}$');
}
