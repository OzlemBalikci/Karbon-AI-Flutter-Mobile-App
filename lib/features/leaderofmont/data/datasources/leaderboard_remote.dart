import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_data_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_leader_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/current_user_rank_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class LeaderboardRemote {
  Future<LeaderboardDataEntity> getLeaderboardData();
}

@LazySingleton(as: LeaderboardRemote)
class LeaderboardRemoteImpl implements LeaderboardRemote {
  LeaderboardRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<LeaderboardDataEntity> getLeaderboardData() async {
    return _mockLeaderboardData;
  }

  static final _mockLeaderboardData = LeaderboardDataEntity(
    yearlyTreeCount: 1000000000,
    monthlyTreeCount: 1000000000,
    leaders: [
      LeaderboardLeaderEntity(
        rank: 1,
        fullName: 'Ekin Can Akın',
        treeCount: 1000000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 2,
        fullName: 'Ekin Can Akın',
        treeCount: 900000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 3,
        fullName: 'Ekin Can Akın',
        treeCount: 800000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 4,
        fullName: 'Ekin Can Akın',
        treeCount: 700000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 5,
        fullName: 'Ekin Can Akın',
        treeCount: 600000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 6,
        fullName: 'Ekin Can Akın',
        treeCount: 500000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 7,
        fullName: 'Ekin Can Akın',
        treeCount: 400000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 8,
        fullName: 'Ekin Can Akın',
        treeCount: 300000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 9,
        fullName: 'Ekin Can Akın',
        treeCount: 200000000,
        isCurrentUser: false,
      ),
      LeaderboardLeaderEntity(
        rank: 10,
        fullName: 'Ekin Can Akın',
        treeCount: 100000000,
        isCurrentUser: false,
      ),
    ],
    currentUserRank: const CurrentUserRankEntity(
      rank: 272,
      treeCount: 120,
      message: '120 Ağaç ile 272.sıradasınız.',
    ),
  );
}
