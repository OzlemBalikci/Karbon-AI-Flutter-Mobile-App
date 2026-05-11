import 'package:dio/dio.dart';
import 'package:karbon/core/errors/app_exception.dart';
import 'package:karbon/core/networks/api_envelope.dart';

class AppInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final body = response.data;

    if (body is! Map<String, dynamic> || !body.containsKey('isSuccessful')) {
      return handler.next(response);
    }

    final envelope = ApiEnvelope.fromJson(body);

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
