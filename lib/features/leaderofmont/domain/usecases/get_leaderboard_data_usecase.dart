import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository.dart';

/// Liderlik tablosunu GET ile getirir (body / ay-yıl query yok; backend dönemi seçer).
@injectable
class GetLeaderboardDataUseCase {
  GetLeaderboardDataUseCase(this._repository);

  final LeaderboardRepository _repository;

  Future<Either<Exception, LeaderboardDataEntity>> call() =>
      _repository.getLeaderboard();
}
