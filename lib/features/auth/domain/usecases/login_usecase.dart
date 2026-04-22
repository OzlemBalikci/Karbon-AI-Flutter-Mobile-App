import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<AppException, AppUser>> call({
    required String emailOrIdentityNumber,
    required String password,
  }) =>
      _repository.login(
          emailOrIdentityNumber: emailOrIdentityNumber, password: password);
}
