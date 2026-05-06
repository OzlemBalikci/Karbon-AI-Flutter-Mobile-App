import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart';

@injectable
class GetUsefulInfosUseCase {
  GetUsefulInfosUseCase(this._repository);

  final UsefulinfoRepository _repository;

  Future<Either<Exception, List<UsefulInfoEntity>>> call() =>
      _repository.getUsefulInfos();
}
