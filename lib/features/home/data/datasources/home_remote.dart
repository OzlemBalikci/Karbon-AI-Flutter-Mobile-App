import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRemote {
  // GET /api/v1/user-results/monthly-leaderboard
  // Aylık/yıllık hedef + ayın liderleri
  Future<HomeDashboardEntity> getMonthlyLeaderboard({
    required int month,
    required int year,
  });
}

@LazySingleton(as: HomeRemote)
class HomeRemoteImpl implements HomeRemote {
  HomeRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<HomeDashboardEntity> getMonthlyLeaderboard({
    required int month,
    required int year,
  }) async {
    // TODO: Backend hazır olunca:
    // final res = await _dio.get(
    //   '/user-results/monthly-leaderboard',
    //   queryParameters: {'Month': month, 'Year': year},
    // );
    // return HomeDashboardEntity.fromJson(res.data);
    await Future.delayed(const Duration(milliseconds: 300));
    return HomeDashboardEntity(
      yearlyTreeCount: 670000,
      monthlyTreeCount: 67000,
    );
  }
}
