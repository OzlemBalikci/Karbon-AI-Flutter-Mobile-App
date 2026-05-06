import 'package:dartz/dartz.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRepository {
  Future<Either<Exception, HomeDashboardEntity>> getHome();
}
