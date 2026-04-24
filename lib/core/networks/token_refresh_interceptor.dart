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

  /// Refresh başarısız olduğunda tetiklenir — logout + login ekranına yönlendir.
  final void Function()? onSessionExpired;

  static const _refreshCall = '_refreshCall';
  static const _retried = '_retried';

  // ── onRequest ─────────────────────────────────────────────────────────────

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Refresh isteğinin kendisi — token eklenmez, HttpOnly cookie otomatik gider.
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

  // ── onError ───────────────────────────────────────────────────────────────

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Yalnızca 401'leri yakala.
    if (err.response?.statusCode != 401) {
      handler.next(err);
      return;
    }

    final ro = err.requestOptions;

    // Zaten yeniden denendi — sonsuz döngüyü önle.
    if (ro.extra[_retried] == true) {
      handler.next(err);
      return;
    }

    // Auth endpoint'lerinde refresh denenmez.
    // Refresh endpoint'i 401 dönerse oturum sona ermiştir.
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
      // AppInterceptor zarfı soyar → refreshRes.data = saf data.
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

      // Orijinal isteği yeni token ile yeniden gönder.
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
