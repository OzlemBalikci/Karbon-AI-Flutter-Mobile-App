import 'package:dio/dio.dart';
import 'package:karbon/core/networks/response_ext.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:karbon/features/auth/data/dtos/auth_token_response.dart';

class TokenRefreshInterceptor extends QueuedInterceptor {
  TokenRefreshInterceptor(
    this._dio,
    this._authLocal, {
    this.onSessionExpired,
  });

  final Dio _dio;
  final AuthLocal _authLocal;

  final void Function()? onSessionExpired;

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
    final isAuthPath = path.contains('/users/token/refresh') ||
        path.contains('/users/login') ||
        path.contains('/users/register');

    if (isAuthPath) {
      if (path.contains('/users/token/refresh')) onSessionExpired?.call();
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

      final tokens = AuthTokenResponse.fromJson(refreshRes.dataMap());
      await _authLocal.saveToken(tokens.accessToken);

      ro.headers['Authorization'] = 'Bearer ${tokens.accessToken}';
      ro.extra[_retried] = true;

      final response = await _dio.fetch(ro);
      handler.resolve(response);
    } catch (_) {
      onSessionExpired?.call();
      handler.next(err);
    }
  }
}
