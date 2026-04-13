import 'package:dio/dio.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:karbon/features/auth/data/dtos/login_response_dto.dart';

/// Access token header ekler; 401 sonrası [POST /users/token/refresh] ile yeniler ve isteği tekrarlar.
/// [CookieManager] ile gelen `refresh_token` çerezi aynı [Dio] üzerinden gider.
class TokenRefreshInterceptor extends QueuedInterceptor {
  TokenRefreshInterceptor(this._dio, this._authLocal);

  final Dio _dio;
  final AuthLocal _authLocal;

  static const _refreshCall = '_refreshCall';
  static const _retried = '_retried';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra[_refreshCall] == true) {
      options.headers.remove('Authorization');
      handler.next(options);
      return;
    }
    final token = await _authLocal.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode != 401) {
      handler.next(err);
      return;
    }
    final ro = err.requestOptions;
    if (ro.extra[_retried] == true) {
      handler.next(err);
      return;
    }
    final path = ro.uri.path;
    if (path.contains('/users/token/refresh') ||
        path.contains('/users/login') ||
        path.contains('/users/register')) {
      handler.next(err);
      return;
    }

    try {
      final refreshRes = await _dio.post<dynamic>(
        '/api/v1/users/token/refresh',
        options: Options(
          extra: <String, dynamic>{
            ...ro.extra,
            _refreshCall: true,
          },
        ),
      );
      final data = unwrapDataMap(refreshRes.data);
      final tokens = LoginResponseModel.fromJson(data);
      await _authLocal.saveToken(tokens.accessToken);
      await _authLocal.saveRefreshToken(tokens.refreshToken);

      ro.headers['Authorization'] = 'Bearer ${tokens.accessToken}';
      ro.extra[_retried] = true;

      final response = await _dio.fetch(ro);
      handler.resolve(response);
    } catch (_) {
      handler.next(err);
    }
  }
}
