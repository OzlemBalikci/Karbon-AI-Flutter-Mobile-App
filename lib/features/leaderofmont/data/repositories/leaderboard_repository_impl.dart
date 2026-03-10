import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository_impl.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  @override
  Future<List<LeaderboardEntry>> getLeaderboard() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _mockData;
  }

  static const _mockData = [
    LeaderboardEntry(
      rank: 1,
      name: 'John',
      surname: 'Doe',
      treeCount: '108000',
    ),
    LeaderboardEntry(
      rank: 2,
      name: 'Jane',
      surname: 'Smith',
      treeCount: '95000',
    ),
  ];
}
