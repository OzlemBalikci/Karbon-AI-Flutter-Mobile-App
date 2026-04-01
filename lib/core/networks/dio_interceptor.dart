import 'package:dio/dio.dart';
import 'package:karbon/core/errors/exceptions.dart';

/// HTTP yanıtlarını [AppException] hiyerarşisine çevirir; mesaj önceliği API `errors` dizisi.
class AppInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final statusCode = err.response?.statusCode;
    final messageFromBody = _firstErrorMessage(err.response?.data);

    final AppException ex;
    if (statusCode == null) {
      ex = NetworkException(err.message ?? 'İnternet bağlantısı yok.');
    } else if (statusCode >= 500) {
      ex = ServerException(
        messageFromBody ?? 'Sunucu hatası',
        statusCode: statusCode,
      );
    } else {
      ex = switch (statusCode) {
        400 => BadRequestException(
            messageFromBody ?? 'Geçersiz istek',
            statusCode: 400,
          ),
        401 => UnauthorizedException(
            messageFromBody ?? 'Oturum süresi doldu',
            statusCode: 401,
          ),
        403 => ForbiddenException(
            messageFromBody ?? 'Yetkiniz yok',
            statusCode: 403,
          ),
        404 => NotFoundException(
            messageFromBody ?? 'Veri bulunamadı',
            statusCode: 404,
          ),
        409 => ConflictException(
            messageFromBody ?? 'Bu kayıt zaten mevcut',
            statusCode: 409,
          ),
        422 => ValidationException(
            messageFromBody ?? 'Validasyon hatası',
            statusCode: 422,
          ),
        _ => ServerException(
            messageFromBody ?? 'Bilinmeyen hata',
            statusCode: statusCode,
          ),
      };
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ex,
        response: err.response,
        type: err.type,
      ),
    );
  }

  String? _firstErrorMessage(dynamic data) {
    if (data is Map) {
      final errors = data['errors'];
      if (errors is List && errors.isNotEmpty) {
        return errors.first.toString();
      }
      final m = data['message'];
      if (m is String) return m;
    }
    return null;
  }
}
