/// API tabanı. `flutter run --dart-define=API_BASE_URL=https://api.ornek.com` ile override edin.
abstract final class ApiConfig {
  static const String baseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: '',
  );
}
