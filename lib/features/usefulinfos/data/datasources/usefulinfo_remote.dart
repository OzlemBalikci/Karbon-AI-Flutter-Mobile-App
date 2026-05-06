import 'package:karbon/features/usefulinfos/data/dtos/usefulinfo_dto.dart';

abstract class UsefulinfoRemote {
  Future<List<UsefulInfoDto>> getUsefulInfos();
}
