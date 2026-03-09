import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart';

@injectable
class CheckSessionUseCase {
  CheckSessionUseCase(this._repository);
  final AuthRepository _repository;

  Future<bool> call() => _repository.checkSession;
}
