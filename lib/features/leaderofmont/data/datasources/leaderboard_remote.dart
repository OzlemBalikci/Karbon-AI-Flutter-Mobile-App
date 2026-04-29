import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

abstract class LeaderboardRemote {
  /// GET `/api/v1/user-results/leaderboard` — parametre yok; sunucu dönemi belirler.
  Future<LeaderboardDataEntity> getLeaderboard();
}
