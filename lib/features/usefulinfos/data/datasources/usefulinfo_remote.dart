import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:dio/dio.dart';
import 'package:karbon/core/translations.dart';

abstract class UsefulinfoRemote {
  //GET /api/v1/useful-informations
  Future<List<UsefulInfoEntity>> getUsefulInfos();
}

@LazySingleton(as: UsefulinfoRemote)
class UsefulinfoRemoteImpl implements UsefulinfoRemote {
  UsefulinfoRemoteImpl(this._dio);
  final Dio _dio;

  //@override
  //Future<List<UsefulInfoEntity>> getUsefulInfos() async {
  // TODO: final res=await _dio.get('/api/v1/useful-informations');
  //TODO: return (res.data as List).map((e) => UsefulInfoEntity.fromJson(e as Map<String, dynamic>)).toList();
  //throw UnimplementedError();
  //}

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
    return List.from(_mockInfos);
  }
}
