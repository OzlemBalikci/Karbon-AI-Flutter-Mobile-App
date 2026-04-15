import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class DeleteAccountUseCase {
  DeleteAccountUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<Exception, void>> call() => _repository.deleteAccount();
}
