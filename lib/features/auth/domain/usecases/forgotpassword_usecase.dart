import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ForgotPasswordUseCase {
  ForgotPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<AppException, void>> call({
    required String phoneNumber,
    String? deviceToken,
  }) =>
      _repository.forgotPassword(
        phoneNumber: phoneNumber,
        deviceToken: deviceToken,
      );
}
