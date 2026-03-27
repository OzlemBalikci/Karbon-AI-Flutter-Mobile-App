import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart';

@injectable
class DeleteAccountUsecase {
  DeleteAccountUsecase(this._repository);
  final ProfileRepository _repository;

  Future<Either<Exception, void>> call() => _repository.deleteAccount();
}
