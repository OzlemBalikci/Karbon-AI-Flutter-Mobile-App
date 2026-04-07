import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

abstract class UsefulinfoRemote {
  /// GET `/api/v1/useful-information` — Aktif faydalı bilgileri döner.
  Future<List<UsefulInfoEntity>> getUsefulInfos();
}
