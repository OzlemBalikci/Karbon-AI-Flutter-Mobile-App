import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart';
import 'package:karbon/features/leaderofmont/data/models/leaderboard_data_dto.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

/// Canlı HTTP — GET `/api/v1/user-results/leaderboard`.
/// Mock için [LeaderboardRemoteMock] kayıtlıyken bu sınıf `@Injectable()` kalır.
@Injectable()
class LeaderboardRemoteImpl implements LeaderboardRemote {
  LeaderboardRemoteImpl(this._dio);

  final Dio _dio;

  static const _path = '/api/v1/user-results/leaderboard';

  @override
  Future<LeaderboardDataEntity> getLeaderboard({
    required int month,
    required int year,
  }) async {
    final res = await _dio.get<dynamic>(
      _path,
      queryParameters: <String, dynamic>{
        'month': month,
        'year': year,
      },
    );
    final raw = res.data;
    if (raw is! Map<String, dynamic>) {
      throw BadRequestException(
        'Beklenmeyen yanıt formatı: Map bekleniyor.',
        statusCode: 400,
      );
    }
    final map = unwrapDataMap(raw);
    return LeaderboardDataDto.fromJson(map).toEntity();
  }
}
