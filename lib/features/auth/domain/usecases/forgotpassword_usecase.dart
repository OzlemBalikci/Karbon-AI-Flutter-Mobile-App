import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ForgotPasswordUseCase {
  ForgotPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, AppUser>> call({
    required String phoneNumber,
  }) =>
      _repository.forgotPassword(phoneNumber: phoneNumber);
}
