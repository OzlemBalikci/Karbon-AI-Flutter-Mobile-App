import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class ClearLocalSessionUseCase {
  ClearLocalSessionUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, Unit>> call() async {
    await _repository.clearLocalSession();
    return const Right(unit);
  }
}
