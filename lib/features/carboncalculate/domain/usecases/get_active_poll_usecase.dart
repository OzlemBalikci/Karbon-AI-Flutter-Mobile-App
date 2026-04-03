import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@injectable
class GetActivePollUseCase {
  GetActivePollUseCase(this._repository);
  final CarbonCalculateRepository _repository;

  Future<Either<Exception, ActivePollSetEntity>> call() =>
      _repository.getActivePoll();
}
