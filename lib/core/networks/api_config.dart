/// API bağlantı yapılandırması.
///
/// [baseUrl] `--dart-define` ile dışarıdan verilir; kod içinde sabit URL kullanılmaz.
///
/// Ortama göre çalıştırma:
/// ```
/// # Android emülatör (makinedeki localhost → 10.0.2.2)
/// flutter run --dart-define=API_BASE_URL=https://10.0.2.2:63313
///
/// # iOS Simulator
/// flutter run --dart-define=API_BASE_URL=https://localhost:63313
///
/// # Gerçek cihaz (PC'nin LAN IP'si)
/// flutter run --dart-define=API_BASE_URL=https://192.168.1.10:63313
///
/// # Production
/// flutter run --dart-define=API_BASE_URL=https://api.example.com
/// ```
///
/// Tanımsızda Android emülatör örneği kullanılır; üretimde `--dart-define=API_BASE_URL=...` verin.
abstract final class ApiConfig {
  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: '',
  );

  /// İlk istek / yavaş backend (ör. login) için [receiveTimeout] bağlantıdan uzun tutulur.
  static const Duration connectTimeout = Duration(seconds: 60);
  static const Duration sendTimeout = Duration(seconds: 60);
  static const Duration receiveTimeout = Duration(seconds: 60);
}
