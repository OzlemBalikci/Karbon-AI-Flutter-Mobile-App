import 'package:dio/dio.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart';
import 'package:karbon/features/usefulinfos/data/models/usefulinfo_model.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

/// Gerçek HTTP. DI şu an [UsefulinfoRemoteMock] kullanıyor; canlıya geçince
/// burada `@LazySingleton(as: UsefulinfoRemote)` açılıp mock’taki annotation kaldırılır.
///
/// HTTP hata kodları [AppInterceptor] ile [AppException]’a çevrilir; burada sadece
/// başarılı gövde (`isSuccess` / `data`) parse edilir.
class UsefulinfoRemoteImpl implements UsefulinfoRemote {
  UsefulinfoRemoteImpl(this._dio);
  final Dio _dio;

  static const _path = '/api/v1/useful-information';

  @override
  Future<List<UsefulInfoEntity>> getUsefulInfos() async {
    final res = await _dio.get<dynamic>(_path);
    final models = _unwrapList(
      res.data,
      httpStatus: res.statusCode ?? 200,
    );
    return models.map((m) => m.toEntity()).toList();
  }

  List<UsefulInfoModel> _unwrapList(dynamic response,
      {required int httpStatus}) {
    final envelope = _asEnvelopeMap(response);
    _assertSuccess(envelope, httpStatus: httpStatus);
    final data = envelope['data'];
    if (data is! List) {
      throw BadRequestException(
        'Beklenmeyen veri formatı.',
        statusCode: 400,
      );
    }
    return data.map((e) {
      if (e is! Map) {
        throw BadRequestException(
          'Liste öğesi beklenen formatta değil.',
          statusCode: 400,
        );
      }
      return UsefulInfoModel.fromJson(Map<String, dynamic>.from(e));
    }).toList();
  }

  Map<String, dynamic> _asEnvelopeMap(dynamic response) {
    if (response is! Map) {
      throw ServerException(
        'Beklenmeyen veri formatı.',
        statusCode: 500,
      );
    }
    return Map<String, dynamic>.from(response);
  }

  void _assertSuccess(Map<String, dynamic> envelope,
      {required int httpStatus}) {
    if (envelope['isSuccess'] == true) return;
    final errors = envelope['errors'];
    final msg = (errors is List && errors.isNotEmpty)
        ? errors.first.toString()
        : 'İstek başarısız oldu.';
    final code = httpStatus >= 400 ? httpStatus : 400;
    throw BadRequestException(msg, statusCode: code);
  }
}
