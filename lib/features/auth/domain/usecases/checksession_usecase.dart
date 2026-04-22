import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class CheckSessionUseCase {
  CheckSessionUseCase(this._repository);
  final AuthRepository _repository;
  Future<Either<AppException, AppUser?>> call() async {
    final hasToken = await _repository.checkSession;
    if (!hasToken) {
      return const Right(null);
    }

    final result = await _repository.loadCurrentUser();
    return result.fold(
      Left.new,
      (user) => Right<AppException, AppUser?>(user),
    );
  }
}
