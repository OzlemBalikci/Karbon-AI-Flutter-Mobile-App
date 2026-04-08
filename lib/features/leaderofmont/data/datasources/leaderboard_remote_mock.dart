import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/data/models/leaderboard_data_dto.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

/// Örnek veri — `leaderboard.md` ile uyumlu. Canlı API için `LeaderboardRemoteImpl` kullanın.
///
/// DI'da mock kullanmak için bu sınıftaki `@LazySingleton` satırının yorumunu kaldırıp
/// `leaderboard_remote_impl.dart` içindeki `@LazySingleton`ı yoruma alın; ardından build_runner.
// @LazySingleton(as: LeaderboardRemote)
class LeaderboardRemoteMock implements LeaderboardRemote {
  @override
  Future<LeaderboardDataEntity> getLeaderboard({
    required int month,
    required int year,
  }) async {
    return LeaderboardDataDto.fromJson(_sampleData).toEntity();
  }

  static final Map<String, dynamic> _sampleData = <String, dynamic>{
    'podium': [
      {
        'rank': 1,
        'fullName': 'Ekin Can Akın',
        'treeCount': 100000,
        'isCurrentUser': false,
      },
      {
        'rank': 2,
        'fullName': 'Ekin Can Akın',
        'treeCount': 50000,
        'isCurrentUser': false,
      },
      {
        'rank': 3,
        'fullName': 'Ekin Can Akın',
        'treeCount': 10000,
        'isCurrentUser': true,
      },
    ],
    'leaders': [
      {
        'rank': 4,
        'fullName': 'Ekin Can Akın',
        'treeCount': 902,
        'isCurrentUser': false,
      },
    ],
    'currentUserRank': {
      'rank': 3,
      'treeCount': 10000,
      'message': '10000 Ağaç ile 3. sıradasınız.',
    },
  };
}
