/// Backend'den `isSuccess: false` döndüğünde fırlatılır.
///
/// [messages] → API'nin `errors` dizisi.
/// [statusCode] → HTTP durum kodu (isteğe bağlı).
class ApiException implements Exception {
  const ApiException({required this.messages, this.statusCode});

  final List<String> messages;
  final int? statusCode;

  String get firstMessage =>
      messages.isNotEmpty ? messages.first : 'Bilinmeyen bir hata oluştu.';

  @override
  String toString() => 'ApiException(${statusCode ?? '?'}): $firstMessage';
}

class ServerException implements Exception {}

class CacheException implements Exception {}
