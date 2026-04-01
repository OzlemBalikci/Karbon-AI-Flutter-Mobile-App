import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exception_unwrapper.dart';
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart';

@LazySingleton(as: UsefulinfoRepository)
class UsefulinfoRepositoryImpl implements UsefulinfoRepository {
  UsefulinfoRepositoryImpl(this._remote);
  final UsefulinfoRemote _remote;

  /// [project_docs/useful-information.md] — içerik statik; 1 saat önbellek.
  static const _cacheTtl = Duration(hours: 1);

  List<UsefulInfoEntity>? _cached;
  DateTime? _cachedAt;

  @override
  Future<Either<Exception, List<UsefulInfoEntity>>> getUsefulInfos() async {
    final now = DateTime.now();
    final snapshot = _cached;
    final at = _cachedAt;
    if (snapshot != null && at != null && now.difference(at) < _cacheTtl) {
      return Right(List<UsefulInfoEntity>.from(snapshot));
    }
    try {
      final list = await _remote.getUsefulInfos();
      _cached = List<UsefulInfoEntity>.from(list);
      _cachedAt = now;
      return Right(List<UsefulInfoEntity>.from(list));
    } on Exception catch (e) {
      return Left(unwrapDioException(e));
    }
  }
}
