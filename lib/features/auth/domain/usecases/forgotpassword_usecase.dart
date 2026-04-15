import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ForgotPasswordUseCase {
  ForgotPasswordUseCase(this._repository);
  final AuthRepository _repository;

  /// İş kuralı: Geçerli Türk cep telefonu (+905xxxxxxxxx) zorunludur.
  /// Başarıda telefona 5 haneli OTP gönderilir; sunucu 15 dk geçerli tutar.
  Future<Either<Exception, Unit>> call({
    required String phoneNumber,
  }) {
    if (!_phoneRegex.hasMatch(phoneNumber)) {
      return Future.value(
        Left(ValidationException(
          'Geçerli bir Türk cep telefonu giriniz. (+905xxxxxxxxx)',
        )),
      );
    }

    return _repository.forgotPassword(phoneNumber: phoneNumber);
  }

  /// +90 ile başlayan, 5 ile devam eden 10 haneli numara: +905XXXXXXXXX
  static final _phoneRegex = RegExp(r'^\+905[0-9]{9}$');
}
