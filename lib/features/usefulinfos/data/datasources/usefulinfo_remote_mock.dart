import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

/// Geliştirme aşaması için sahte veri kaynağı.
///
/// Canlıya geçmek için:
///   1. Bu dosyadaki `@LazySingleton` annotation'ını kaldır.
///   2. [UsefulinfoRemoteImpl]'a `@LazySingleton(as: UsefulinfoRemote)` ekle.
///   3. `dart run build_runner build --delete-conflicting-outputs` çalıştır.
@LazySingleton(as: UsefulinfoRemote)
class UsefulinfoRemoteMock implements UsefulinfoRemote {
  static const _mockInfos = [
    UsefulInfoEntity(
      id: '1',
      title: 'Title 1',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.',
      displayOrder: 1,
    ),
    UsefulInfoEntity(
      id: '2',
      title: 'Title 2',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.',
      displayOrder: 2,
    ),
    UsefulInfoEntity(
      id: '3',
      title: 'Title 3',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.',
      displayOrder: 3,
    ),
    UsefulInfoEntity(
      id: '4',
      title: 'Title 4',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.',
      displayOrder: 4,
    ),
    UsefulInfoEntity(
      id: '5',
      title: 'Title 5',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.',
      displayOrder: 5,
    ),
  ];

  @override
  Future<List<UsefulInfoEntity>> getUsefulInfos() async {
    return List<UsefulInfoEntity>.from(_mockInfos);
  }
}
