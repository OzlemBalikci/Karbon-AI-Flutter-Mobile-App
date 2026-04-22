import 'package:karbon/features/usefulinfos/data/dtos/usefulinfo_dto.dart';

abstract class UsefulinfoRemote {
  /// GET `/api/v1/useful-information` — Aktif faydalı bilgileri döner.
  Future<List<UsefulInfoDto>> getUsefulInfos();
}
