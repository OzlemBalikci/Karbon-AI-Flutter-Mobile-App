import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/data/dtos/leaderboard_data_dto.dart';
import 'package:karbon/features/leaderofmont/data/mapper/leaderboard_mapper.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

/// Geliştirme: örnek liderlik verisi.
/// Canlı API için [LeaderboardRemoteImpl] `@LazySingleton(as: LeaderboardRemote)` ile kayıtlıdır.
@LazySingleton(as: LeaderboardRemote)
class LeaderboardRemoteMock implements LeaderboardRemote {
  @override
  Future<LeaderboardDataEntity> getLeaderboard() async {
    await Future<void>.delayed(const Duration(milliseconds: 100));
    return LeaderboardMapper.toLeaderboardDataEntity(
        LeaderboardDataDto.fromJson(_sampleData));
  }

  static final Map<String, dynamic> _sampleData = <String, dynamic>{
    'podium': [
      {
        'rank': 1,
        'fullName': 'Zeynep Kaya',
        'treeCount': 1280,
        'isCurrentUser': false,
      },
      {
        'rank': 2,
        'fullName': 'Ahmet Yılmaz',
        'treeCount': 940,
        'isCurrentUser': true,
      },
      {
        'rank': 3,
        'fullName': 'Ayşe Demir',
        'treeCount': 820,
        'isCurrentUser': false,
      },
    ],
    'leaders': [
      {
        'rank': 4,
        'fullName': 'Ayşe Demir',
        'treeCount': 610,
        'isCurrentUser': false,
      },
      {
        'rank': 5,
        'fullName': 'Can Öztürk',
        'treeCount': 500,
        'isCurrentUser': false,
      },
      {
        'rank': 6,
        'fullName': 'Ayşe Demir',
        'treeCount': 200,
        'isCurrentUser': false,
      },
      {
        'rank': 7,
        'fullName': 'Can Öztürk',
        'treeCount': 445,
        'isCurrentUser': false,
      },
      {
        'rank': 8,
        'fullName': 'Ayşe Demir',
        'treeCount': 610,
        'isCurrentUser': false,
      },
      {
        'rank': 9,
        'fullName': 'Can Öztürk',
        'treeCount': 445,
        'isCurrentUser': false,
      },
      {
        'rank': 10,
        'fullName': 'Ayşe Demir',
        'treeCount': 610,
        'isCurrentUser': false,
      },
    ],
    'currentUserRank': {
      'rank': 20,
      'treeCount': 940,
      'message': '940 Ağaç ile 2. sıradasınız.',
    },
  };
}
