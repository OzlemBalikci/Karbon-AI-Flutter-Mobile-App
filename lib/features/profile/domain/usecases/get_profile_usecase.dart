import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/domain/entities/user_profile_entity.dart';
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart';

@injectable
class GetProfileUseCase {
  GetProfileUseCase(this._repository);
  final ProfileRepository _repository;

  Future<Either<Exception, UserProfileEntity>> call() =>
      _repository.getProfile();
}
