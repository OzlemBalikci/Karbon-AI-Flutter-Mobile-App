import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

abstract class UsefulinfoRemote {
  /// GET `/api/v1/useful-information` — [project_docs/useful-information.md]
  Future<List<UsefulInfoEntity>> getUsefulInfos();
}
