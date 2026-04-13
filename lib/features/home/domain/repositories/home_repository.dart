import 'package:dartz/dartz.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRepository {
  /// GET `/api/v1/user-results/home` — `project_docs/home.md`
  Future<Either<Exception, HomeDashboardEntity>> getHome();
}
