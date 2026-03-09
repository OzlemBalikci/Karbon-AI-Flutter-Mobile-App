import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart';

abstract class IUsefulinfoRemote {
  Future<List<UsefulInfo>> fetchInfos();
}

@LazySingleton(as: IUsefulinfoRemote)
class UsefulinfoRemoteImpl implements IUsefulinfoRemote {
  @override
  Future<List<UsefulInfo>> fetchInfos() async {
    throw UnimplementedError('Backend hazır olunca implement edilecek');
  }
}

@LazySingleton(as: IUsefulinfoRepository)
class UsefulinfoRepositoryImpl implements IUsefulinfoRepository {
  UsefulinfoRepositoryImpl(this._remote);
  final IUsefulinfoRemote _remote;

  @override
  Future<List<UsefulInfo>> getUsefulInfos() async {
    try {
      return await _remote.fetchInfos();
    } on UnimplementedError {
      return _getMockInfos();
    } on Exception {
      return _getMockInfos();
    }
  }

  List<UsefulInfo> _getMockInfos() {
    return [
      const UsefulInfo(
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        title: 'Lorem',
        order: 1,
        id: '1',
      ),
      const UsefulInfo(
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        title: 'Lorem',
        order: 2,
        id: '2',
      ),
      const UsefulInfo(
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        title: 'Lorem ',
        order: 3,
        id: '3',
      ),
      const UsefulInfo(
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        title: 'Lorem ipsum',
        order: 4,
        id: '4',
      ),
    ];
  }
}
