import 'package:dartz/dartz.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

abstract class UsefulinfoRepository {
  Future<Either<Exception, List<UsefulInfoEntity>>> getUsefulInfos();
}
