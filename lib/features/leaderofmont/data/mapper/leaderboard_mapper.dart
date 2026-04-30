import 'package:karbon/features/leaderofmont/data/dtos/currentuser_rank_dto.dart';
import 'package:karbon/features/leaderofmont/data/dtos/leaderboard_data_dto.dart';
import 'package:karbon/features/leaderofmont/data/dtos/leaderboard_leader_dto.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

class LeaderboardMapper {
  LeaderboardMapper._();

  static LeaderboardLeaderEntity toLeaderEntity(LeaderboardLeaderDto dto) =>
      LeaderboardLeaderEntity(
        rank: dto.rank,
        fullName: dto.fullName,
        treeCount: dto.treeCount,
        isCurrentUser: dto.isCurrentUser,
      );

  static CurrentUserRankEntity toCurrentUserRankEntity(
          CurrentUserRankDto dto) =>
      CurrentUserRankEntity(
        rank: dto.rank,
        treeCount: dto.treeCount,
        message: dto.message,
      );

  static LeaderboardDataEntity toLeaderboardDataEntity(
          LeaderboardDataDto dto) =>
      LeaderboardDataEntity(
        podium: dto.podium.map(toLeaderEntity).toList(),
        leaders: dto.leaders.map(toLeaderEntity).toList(),
        currentUserRank: toCurrentUserRankEntity(dto.currentUserRank),
      );
}
