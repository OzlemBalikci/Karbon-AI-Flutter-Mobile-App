import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._repository);
  final AuthRepository _repository;

  Future<void> call() => _repository.logout();
}
