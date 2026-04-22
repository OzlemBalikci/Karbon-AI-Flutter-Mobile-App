import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/data/datasources/home_remote.dart';
import 'package:karbon/features/home/data/dtos/home_dashboard_dto.dart';
import 'package:karbon/features/home/data/mapper/dto_mapper.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/core/networks/response_ext.dart';

/// Canlı API. Mock için [HomeRemoteMock] kayıtlıyken bu sınıf `@Injectable()` kalL
@Injectable()
class HomeRemoteImpl implements HomeRemote {
  HomeRemoteImpl(this._dio);

  final Dio _dio;

  @override
  Future<HomeDashboardEntity> getHome() async {
    final res = await _dio.get<dynamic>('/api/v1/user-results/home');
    final map = res.dataMap();
    return HomeMapper.toHomeDashboardEntity(HomeDashboardDto.fromJson(map));
  }
}
