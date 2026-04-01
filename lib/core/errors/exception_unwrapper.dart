import 'package:dio/dio.dart';
import 'package:karbon/core/errors/exceptions.dart';

/// [AppInterceptor] hatayı [DioException.error] içine koyar; repository katmanında
/// [Either] için düz [Exception]'a indirgenir.
Exception unwrapDioException(Object error) {
  if (error is DioException) {
    final inner = error.error;
    if (inner is AppException) return inner;
    return NetworkException(error.message ?? 'Ağ hatası');
  }
  if (error is AppException) return error;
  if (error is Exception) return error;
  return Exception(error.toString());
}
