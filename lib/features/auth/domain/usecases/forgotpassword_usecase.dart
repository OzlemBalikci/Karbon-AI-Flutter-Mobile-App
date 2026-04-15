import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ForgotPasswordUseCase {
  ForgotPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, Unit>> call({
    required String phoneNumber,
  }) {
    if (!_phoneRegex.hasMatch(phoneNumber)) {
      return Future.value(
        Left(ValidationException(
          'Telefon numaranızı başında 0',
        )),
      );
    }

    return _repository.forgotPassword(phoneNumber: phoneNumber);
  }

  /// +90 ile başlayan, 5 ile devam eden 10 haneli numara: +905XXXXXXXXX
  static final _phoneRegex = RegExp(r'^\+90[0-9]{9}$');
}
