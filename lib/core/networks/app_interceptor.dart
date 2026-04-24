//Backend’den gelen cevabı kontrol eder, başarısızsa hata fırlatır, başarılıysa veriyi sadeleştirir.
import 'package:dio/dio.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/networks/api_envelope.dart';

//Bu bir Dio Interceptor'dır. Yani: API’den gelen her response buradan geçer.
class AppInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final body = response.data;

    //Response formatı kontorl ediliyor.
    if (body is! Map<String, dynamic> || !body.containsKey('isSuccessful')) {
      return handler.next(response);
    }

    //Response formatı ApiEnvelope'a çevriliyor.
    final envelope = ApiEnvelope.fromJson(body);

    //Response formatı ApiEnvelope'a çevrildikten sonra, başarısızsa hata fırlatılıyor.
    if (!envelope.isSuccessful) {
      return handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          type: DioExceptionType.badResponse,
          error: AppException.fromEnvelope(
            statusCode: envelope.statusCode,
            errors: envelope.errors,
          ),
        ),
      );
    }

    response.data = envelope.data;
    handler.next(response);
  }
}
