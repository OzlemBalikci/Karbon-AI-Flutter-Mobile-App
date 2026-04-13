import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/home/domain/repositories/home_repository.dart';

@injectable
class GetHomeUseCase {
  GetHomeUseCase(this._repository);

  final HomeRepository _repository;

  Future<Either<Exception, HomeDashboardEntity>> call() => _repository.getHome();
}
