import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository.dart';

/// Liderlik tablosunu ay/yıl ile getirir.
@injectable
class GetLeaderboardDataUseCase {
  GetLeaderboardDataUseCase(this._repository);

  final LeaderboardRepository _repository;

  Future<Either<Exception, LeaderboardDataEntity>> call({
    required int month,
    required int year,
  }) =>
      _repository.getLeaderboard(month: month, year: year);
}
