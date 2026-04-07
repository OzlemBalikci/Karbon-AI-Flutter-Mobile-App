import 'package:dartz/dartz.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

abstract class UsefulinfoRepository {
  /// GET `/api/v1/useful-information` — Aktif faydalı bilgileri `displayOrder`'a göre sıralı döner.
  Future<Either<Exception, List<UsefulInfoEntity>>> getUsefulInfos();
}
