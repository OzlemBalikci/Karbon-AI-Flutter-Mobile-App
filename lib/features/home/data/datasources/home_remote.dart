import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRemote {
  Future<HomeDashboardEntity> getHome();
}
