import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/data/datasources/home_remote.dart';
import 'package:karbon/features/home/data/mocks/home_dashboard_mock.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

/// Geliştirme: [HomeDashboardMock] ile ana sayfa verisi.
/// Canlı API için [HomeRemoteImpl] `@LazySingleton(as: HomeRemote)` ile kayıtlıdır.
@LazySingleton(as: HomeRemote)
class HomeRemoteMock implements HomeRemote {
  @override
  Future<HomeDashboardEntity> getHome() async {
    await Future<void>.delayed(const Duration(milliseconds: 100));
    return HomeDashboardMock.dashboard;
  }
}
