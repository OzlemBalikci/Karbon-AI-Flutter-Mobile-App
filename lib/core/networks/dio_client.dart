import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:karbon/core/networks/app_interceptor.dart';

@lazySingleton
class DioClient {
  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: ApiConfig.connectTimeout,
        sendTimeout: ApiConfig.sendTimeout,
        receiveTimeout: ApiConfig.receiveTimeout,
        headers: const {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    )..interceptors.add(AppInterceptor());
  }

  late final Dio _dio;

  Dio get dio => _dio;

  void addInterceptor(Interceptor interceptor) =>
      _dio.interceptors.add(interceptor);

  void setToken(String token) =>
      _dio.options.headers['Authorization'] = 'Bearer $token';

  void clearToken() => _dio.options.headers.remove('Authorization');
}
