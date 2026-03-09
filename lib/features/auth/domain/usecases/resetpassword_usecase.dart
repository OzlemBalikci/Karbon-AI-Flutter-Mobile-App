import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ResetPasswordUseCase {
  ResetPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, AppUser>> call({
    required String password,
  }) =>
      _repository.resetPassword(password: password);
}
