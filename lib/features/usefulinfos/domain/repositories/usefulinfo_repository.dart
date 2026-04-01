import 'package:dartz/dartz.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

/// Faydalı bilgiler listesi.
///
/// [getUsefulInfos] yanıtı [project_docs/useful-information.md] ile uyumludur;
/// istemci tarafında 1 saat önbellek uygulanır.
abstract class UsefulinfoRepository {
  /// GET /api/v1/useful-infos — Kullanışlı bilgileri listeler.
  Future<Either<Exception, List<UsefulInfoEntity>>> getUsefulInfos();
}
