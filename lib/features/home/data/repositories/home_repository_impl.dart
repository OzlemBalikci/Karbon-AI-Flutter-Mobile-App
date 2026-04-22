import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/data/datasources/home_remote.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/home/domain/repositories/home_repository.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/errors/exception_handler.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._remote);

  final HomeRemote _remote;

  @override
  Future<Either<AppException, HomeDashboardEntity>> getHome() async {
    try {
      final dashboard = await _remote.getHome();
      return Right(dashboard);
    } catch (e) {
      return guardLeft(e);
    }
  }
}
