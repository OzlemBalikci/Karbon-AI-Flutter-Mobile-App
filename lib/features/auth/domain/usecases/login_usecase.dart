import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._repository);
  final AuthRepository _repository;

  /// E-posta veya TCKN (11 hane) ile giriş yapar.
  /// İş kuralı: alan boş olamaz; geçerli e-posta formatı veya 11 haneli rakam.
  Future<Either<Exception, AppUser>> call({
    required String emailOrIdentityNumber,
    required String password,
  }) {
    final trimmed = emailOrIdentityNumber.trim();

    if (trimmed.isEmpty) {
      return Future.value(
        Left(
            ValidationException('E-posta veya TC kimlik numarası boş olamaz.')),
      );
    }

    final isEmail = _emailRegex.hasMatch(trimmed);
    final isTc = _tcRegex.hasMatch(trimmed);

    if (!isEmail && !isTc) {
      return Future.value(
        Left(ValidationException(
          'Geçerli bir e-posta veya 11 haneli TC kimlik numarası giriniz.',
        )),
      );
    }

    if (password.isEmpty) {
      return Future.value(Left(ValidationException('Şifre boş olamaz.')));
    }

    return _repository.login(
      emailOrIdentityNumber: trimmed,
      password: password,
    );
  }

  static final _emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  static final _tcRegex = RegExp(r'^\d{11}$');
}
