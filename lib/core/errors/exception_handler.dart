//bu kod uygulamadaki tüm hataları tek tip bir yapıya çevirip yönetmek için yazılmıştır.

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:karbon/core/errors/app_exception.dart';

AppException toAppException(Object e) {
  if (e is DioException) {
    if (e.error is AppException) return e.error as AppException;

//DioExceptionType'ları kullanıcıya gösterebilecek anlamlı mesajlara çevirir.
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

/// [toAppException] sonucunu [Either.left] olarak sarmalar.
///
/// ```dart
/// Future<Either<AppException, List<Foo>>> getFoos() async {
///   try {
///     return Right(await _remote.getFoos());
///   } catch (e) {
///     return guardLeft(e);
///   }
/// }
/// ```
Either<AppException, T> guardLeft<T>(Object e) => Left(toAppException(e));
