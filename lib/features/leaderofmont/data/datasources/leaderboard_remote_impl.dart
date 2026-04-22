import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/data/dtos/leaderboard_data_dto.dart';
import 'package:karbon/features/leaderofmont/data/mapper/leaderboard_mapper.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/core/networks/response_ext.dart';

/// Canlı HTTP — GET `/api/v1/user-results/leaderboard`.
/// Mock için [LeaderboardRemoteMock] kayıtlıyken bu sınıf `@Injectable()` kalır.
@Injectable()
class LeaderboardRemoteImpl implements LeaderboardRemote {
  LeaderboardRemoteImpl(this._dio);

  final Dio _dio;

  @override
  Future<LeaderboardDataEntity> getLeaderboard({
    required int month,
    required int year,
  }) async {
    final res = await _dio.get<dynamic>(
      '/api/v1/user-results/leaderboard',
      queryParameters: <String, dynamic>{
        'month': month,
        'year': year,
      },
    );
    final map = res.dataMap();
    return LeaderboardMapper.toLeaderboardDataEntity(
        LeaderboardDataDto.fromJson(map));
  }
}
