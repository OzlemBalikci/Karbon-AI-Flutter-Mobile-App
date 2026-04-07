import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart'; // canlıya geçince yorumu kaldır
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart';
import 'package:karbon/features/usefulinfos/data/models/usefulinfo_dto.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

/// Gerçek HTTP uygulaması — GET `/api/v1/useful-information`.
///
/// Hata akışı:
///   • Ağ / HTTP hataları → [AppInterceptor] tarafından [AppException] alt sınıflarına dönüştürülür.
///   • `isSuccess: false` gövdesi → [assertApiSuccess] ([unwrapDataList] içinde) [BadRequestException] fırlatır.
///   • Beklenmeyen veri formatı → aşağıdaki guard [BadRequestException] fırlatır.
///   Tüm exception'lar repository katmanında [unwrapDioException] ile [Either.left]'e çevrilir.
///
/// Şu an [UsefulinfoRemoteMock] DI'a kayıtlı; canlıya geçmek için:
///   1. Aşağıdaki `@LazySingleton` satırının başındaki `//` yi kaldır.
///   2. `usefulinfo_remote_mock.dart` içindeki `@LazySingleton` satırını yoruma al.
///   3. `dart run build_runner build --delete-conflicting-outputs` çalıştır.
// @LazySingleton(as: UsefulinfoRemote)
class UsefulinfoRemoteImpl implements UsefulinfoRemote {
  UsefulinfoRemoteImpl(this._dio);

  final Dio _dio;

  static const _path = '/api/v1/useful-information';

  @override
  Future<List<UsefulInfoEntity>> getUsefulInfos() async {
    final res = await _dio.get<dynamic>(_path);
    final raw = unwrapDataList(res.data);
    return raw.map((e) {
      if (e is! Map<String, dynamic>) {
        throw BadRequestException(
          'Beklenmeyen öğe formatı: Map bekleniyor.',
          statusCode: 400,
        );
      }
      return UsefulInfoDto.fromJson(e).toEntity();
    }).toList();
  }
}
