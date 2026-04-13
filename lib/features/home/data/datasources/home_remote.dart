import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRemote {
  /// GET `/api/v1/user-results/home`
  Future<HomeDashboardEntity> getHome();
}
