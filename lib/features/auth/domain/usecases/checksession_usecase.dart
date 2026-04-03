import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class CheckSessionUseCase {
  CheckSessionUseCase(this._repository);
  final AuthRepository _repository;

  /// Token yoksa `Right(null)`; varsa sunucudan profil.
  Future<Either<Exception, AppUser?>> call() => _repository.resolveSession();
}
