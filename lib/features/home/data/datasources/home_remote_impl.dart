import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/home/data/datasources/home_remote.dart';
import 'package:karbon/features/home/data/models/home_dashboard_dto.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

/// Canlı API. Mock için [HomeRemoteMock] kayıtlıyken bu sınıf `@Injectable()` kalır.
@Injectable()
class HomeRemoteImpl implements HomeRemote {
  HomeRemoteImpl(this._dio);

  final Dio _dio;

  static const _path = '/api/v1/user-results/home';

  @override
  Future<HomeDashboardEntity> getHome() async {
    final res = await _dio.get<dynamic>(_path);
    final raw = res.data;
    if (raw is! Map<String, dynamic>) {
      throw BadRequestException(
        'Beklenmeyen yanıt formatı: Map bekleniyor.',
        statusCode: 400,
      );
    }
    final map = unwrapDataMap(raw);
    return HomeDashboardDto.fromJson(map).toEntity();
  }
}
