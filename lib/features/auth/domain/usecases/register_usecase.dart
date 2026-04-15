import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

/// Hangi form alanına ait olduğu (çoklu doğrulama hatası için).
enum RegisterValidationTarget {
  email,
  identityNumber,
  firstName,
  lastName,
  birthDate,
  phoneNumber,
  kvkk,

  /// API / ağ — genel [RegisterState.error]
  remote,
}

/// Tek bir alan doğrulama hatası.
class ValidationError {
  const ValidationError(this.target, this.message);

  final RegisterValidationTarget target;
  final String message;
}

@injectable
class RegisterUseCase {
  RegisterUseCase(this._repository);

  final AuthRepository _repository;
  final RegisterValidator _validator = RegisterValidator();

  Future<Either<List<ValidationError>, AppUser>> call({
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
    final errors = _validator.validate(
      email: email,
      identityNumber: identityNumber,
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
      phoneNumber: phoneNumber,
      isKvkkApproved: isKvkkApproved,
    );

    if (errors.isNotEmpty) {
      return Left(errors);
    }

    final remote = await _repository.register(
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

    return remote.fold(
      (e) => Left([
        ValidationError(
          RegisterValidationTarget.remote,
          e is AppException ? e.message : e.toString(),
        ),
      ]),
      Right.new,
    );
  }
}

class RegisterValidator {
  List<ValidationError> validate({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required bool isKvkkApproved,
  }) {
    final errors = <ValidationError>[];

    if (!_emailRegex.hasMatch(email.trim())) {
      errors.add(const ValidationError(
        RegisterValidationTarget.email,
        'Geçerli bir e-posta adresi giriniz.',
      ));
    }

    if (!_tcRegex.hasMatch(identityNumber)) {
      errors.add(const ValidationError(
        RegisterValidationTarget.identityNumber,
        '11 haneli geçerli bir TC kimlik numarası giriniz.',
      ));
    }

    if (firstName.trim().isEmpty) {
      errors.add(const ValidationError(
        RegisterValidationTarget.firstName,
        'Ad boş olamaz.',
      ));
    }

    if (lastName.trim().isEmpty) {
      errors.add(const ValidationError(
        RegisterValidationTarget.lastName,
        'Soyad boş olamaz.',
      ));
    }

    if (birthDate.isEmpty) {
      errors.add(const ValidationError(
        RegisterValidationTarget.birthDate,
        'Doğum tarihi boş olamaz.',
      ));
    }

    if (!_phoneRegex.hasMatch(phoneNumber)) {
      errors.add(const ValidationError(
        RegisterValidationTarget.phoneNumber,
        'Geçerli bir Türk cep telefonu giriniz. (+905xxxxxxxxx)',
      ));
    }

    if (!isKvkkApproved) {
      errors.add(const ValidationError(
        RegisterValidationTarget.kvkk,
        'Devam etmek için KVKK onayı zorunludur.',
      ));
    }

    return errors;
  }

  static final _emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  static final _tcRegex = RegExp(r'^\d{11}$');
  static final _phoneRegex = RegExp(r'^\+905[0-9]{9}$');
}
