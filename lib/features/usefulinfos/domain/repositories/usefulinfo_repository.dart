import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

abstract class IUsefulinfoRepository {
  Future<List<UsefulInfo>> getUsefulInfos();
}
