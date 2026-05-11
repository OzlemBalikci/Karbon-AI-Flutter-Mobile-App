import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:karbon/core/errors/app_exception.dart';

AppException toAppException(Object e) {
  if (e is DioException) {
    if (e.error is AppException) return e.error as AppException;

    return switch (e.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout =>
        AppException.network('Bağlantı zaman aşımına uğradı.'),
      DioExceptionType.receiveTimeout => AppException.network(
          'Sunucu yanıtı gecikti. Ağınızı kontrol edin veya bir süre sonra tekrar deneyin.',
        ),
      DioExceptionType.connectionError =>
        AppException.network('Sunucuya bağlanılamadı.'),
      DioExceptionType.cancel => AppException.unexpected('İstek iptal edildi.'),
      _ => AppException.network(e.message),
    };
  }

  if (e is AppException) return e;

  return AppException.unexpected(e.toString());
}

Either<AppException, T> guardLeft<T>(Object e) => Left(toAppException(e));
