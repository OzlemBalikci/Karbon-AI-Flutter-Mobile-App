import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart';
import 'package:karbon/features/usefulinfos/data/dtos/usefulinfo_dto.dart';
import 'package:karbon/core/networks/response_ext.dart';

/// Gerçek HTTP uygulaması — GET `/api/v1/useful-information`.
///
/// [AppInterceptor] zarfı soyduktan sonra `data` bir JSON dizisi olmalıdır; tip doğrulaması [ResponseDataX.dataList] ile yapılır.
@Injectable()
class UsefulinfoRemoteImpl implements UsefulinfoRemote {
  UsefulinfoRemoteImpl(this._dio);

  final Dio _dio;

  @override
  Future<List<UsefulInfoDto>> getUsefulInfos() async {
    final res = await _dio.get<dynamic>('/api/v1/useful-information');
    return res.dataList().map(UsefulInfoDto.fromJson).toList();
  }
}
