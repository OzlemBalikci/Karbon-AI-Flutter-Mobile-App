import 'package:karbon/features/leaderofmont/data/models/leaderboard_leader_dto.dart';
import 'package:karbon/features/leaderofmont/data/models/currentuser_rank_dto.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

class LeaderboardDataDto {
  const LeaderboardDataDto({
    required this.podium,
    required this.leaders,
    required this.currentUserRank,
  });

  final List<LeaderboardLeaderDto> podium;
  final List<LeaderboardLeaderDto> leaders;
  final CurrentUserRankDto currentUserRank;

  factory LeaderboardDataDto.fromJson(Map<String, dynamic> json) {
    final podiumRaw = json['podium'];
    final leadersRaw = json['leaders'];
    final currentRaw = json['currentUserRank'];

    return LeaderboardDataDto(
      podium: podiumRaw is List
          ? podiumRaw
              .whereType<Map>()
              .map((e) =>
                  LeaderboardLeaderDto.fromJson(Map<String, dynamic>.from(e)))
              .toList()
          : const [],
      leaders: leadersRaw is List
          ? leadersRaw
              .whereType<Map>()
              .map((e) =>
                  LeaderboardLeaderDto.fromJson(Map<String, dynamic>.from(e)))
              .toList()
          : const [],
      currentUserRank: currentRaw is Map<String, dynamic>
          ? CurrentUserRankDto.fromJson(currentRaw)
          : CurrentUserRankDto.fromJson(const {}),
    );
  }

  LeaderboardDataEntity toEntity() => LeaderboardDataEntity(
        podium: podium.map((e) => e.toEntity()).toList(),
        leaders: leaders.map((e) => e.toEntity()).toList(),
        currentUserRank: currentUserRank.toEntity(),
      );
}
