sealed class AppException implements Exception {
  const AppException();
}

class ApiException extends AppException {
  const ApiException({
    required this.statusCode,
    required this.messages,
  });

  final int statusCode;
  final List<String> messages;

  String get firstMessage =>
      messages.isNotEmpty ? messages.first : 'Bilinmeyen bir hata oluştu.';

  /// 400 — Geçersiz istek / Validation hatası
  bool get isBadRequest => statusCode == 400;

  /// 401 — Token yok veya geçersiz
  bool get isUnauthorized => statusCode == 401;

  /// 403 — Yetki yok
  bool get isForbidden => statusCode == 403;

  /// 404 — Kayıt bulunamadı
  bool get isNotFound => statusCode == 404;

  /// 409 — Duplicate kayıt (çakışma)
  bool get isConflict => statusCode == 409;

  /// 422 — Business rule ihlali (işlenemez)
  bool get isUnprocessable => statusCode == 422;

  /// 500 — Sunucu tarafı beklenmeyen hata
  bool get isServerError => statusCode >= 500;

  @override
  String toString() => 'ApiException($statusCode): $firstMessage';
}

class NetworkException extends AppException {
  const NetworkException({this.message = 'İnternet bağlantısı yok.'});
  final String message;
  @override
  String toString() => 'NetworkException: $message';
}

class CacheException extends AppException {
  const CacheException({this.message = 'Yerel Veri Okunamadı'});
  final String message;
  @override
  String toString() => 'CacheException: $message';
}
