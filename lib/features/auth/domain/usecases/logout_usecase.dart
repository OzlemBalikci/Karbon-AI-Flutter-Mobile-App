import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<AppException, void>> call() async {
    await _repository.logout();
    return const Right(null);
  }
}
