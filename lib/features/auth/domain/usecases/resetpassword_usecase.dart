import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ResetPasswordUseCase {
  ResetPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, Unit>> call({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) =>
      _repository.resetPassword(
        phoneNumber: phoneNumber,
        resetCode: resetCode,
        newPassword: newPassword,
        confirmNewPassword: confirmNewPassword,
      );
}
