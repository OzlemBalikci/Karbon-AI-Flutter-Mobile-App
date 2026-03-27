import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/domain/entities/donate_trees_result_entity.dart';
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart';

@injectable
class DonateTreesUsecase {
  DonateTreesUsecase(this._repository);
  final ProfileRepository _repository;

  Future<Either<Exception, DonateTreesResultEntity>> call() =>
      _repository.donateTrees();
}
