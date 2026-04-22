import 'package:karbon/core/errors/api_error.dart';

class AppException implements Exception {
  const AppException._({
    required this.message,
    required this.statusCode,
    required this.type,
    this.errors = const [],
  });

  factory AppException.fromEnvelope({
    required int statusCode,
    required List<ApiError> errors,
  }) {
    final shown = errors.where((e) => e.isShow);
    return AppException._(
      message:
          shown.isNotEmpty ? shown.first.message : _defaultMessage(statusCode),
      statusCode: statusCode,
      type: _typeFromStatus(statusCode),
      errors: errors,
    );
  }

  factory AppException.network([String? detail]) => AppException._(
        message: detail ?? 'İnternet bağlantınızı kontrol edin.',
        statusCode: 0,
        type: AppExceptionType.network,
      );

  factory AppException.business(String message) => AppException._(
        message: message,
        statusCode: 0,
        type: AppExceptionType.business,
      );

  factory AppException.unexpected([String? detail]) => AppException._(
        message: detail ?? 'Beklenmeyen bir hata oluştu.',
        statusCode: 0,
        type: AppExceptionType.unexpected,
      );

  final String message;
  final int statusCode;
  final AppExceptionType type;
  final List<ApiError> errors;

  List<String> get visibleMessages =>
      errors.where((e) => e.isShow).map((e) => e.message).toList();

  bool hasCode(int code) => errors.any((e) => e.code == code);

  // ── Private helpers ───────────────────────────────────────────────────────

  static AppExceptionType _typeFromStatus(int code) => switch (code) {
        401 => AppExceptionType.unauthorized,
        403 => AppExceptionType.forbidden,
        422 => AppExceptionType.validation,
        400 => AppExceptionType.business,
        >= 500 => AppExceptionType.server,
        _ => AppExceptionType.unexpected,
      };

  static String _defaultMessage(int code) => switch (code) {
        401 => 'Oturum süreniz doldu. Lütfen tekrar giriş yapın.',
        403 => 'Bu işlem için yetkiniz bulunmuyor.',
        422 => 'Girilen bilgileri kontrol edin.',
        400 => 'İşlem gerçekleştirilemedi.',
        >= 500 => 'Sunucu hatası. Lütfen daha sonra tekrar deneyin.',
        _ => 'Bir hata oluştu.',
      };

  @override
  String toString() => 'AppException[$type]($statusCode): $message';
}

enum AppExceptionType {
  unauthorized,
  forbidden,
  validation,
  business,
  server,
  network,

  /// Parse hatası veya hiçbir kategoriye girmeyen beklenmeyen durum.
  unexpected,
}
