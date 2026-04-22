import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';

@injectable
class GetPollResultsUseCase {
  GetPollResultsUseCase(this._repository);
  final CarbonCalculateRepository _repository;

  Future<Either<AppException, PollResultEntity>> call({
    required String pollSetId,
    required int month,
    required int year,
  }) =>
      _repository.getPollResults(
        pollSetId: pollSetId,
        month: month,
        year: year,
      );
}
