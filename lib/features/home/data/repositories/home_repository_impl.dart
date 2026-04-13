import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/home/data/datasources/home_remote.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/home/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._remote);

  final HomeRemote _remote;

  @override
  Future<Either<Exception, HomeDashboardEntity>> getHome() async {
    try {
      final dashboard = await _remote.getHome();
      return Right(dashboard);
    } on Object catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
