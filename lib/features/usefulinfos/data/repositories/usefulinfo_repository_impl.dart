import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/errors/exception_handler.dart';
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart';

@LazySingleton(as: UsefulinfoRepository)
class UsefulinfoRepositoryImpl implements UsefulinfoRepository {
  UsefulinfoRepositoryImpl(this._remote);

  final UsefulinfoRemote _remote;

  @override
  Future<Either<AppException, List<UsefulInfoEntity>>> getUsefulInfos() async {
    try {
      final list = await _remote.getUsefulInfos();
      return Right(list.map((e) => e.toEntity()).toList());
    } catch (e) {
      return guardLeft(e);
    }
  }
}
