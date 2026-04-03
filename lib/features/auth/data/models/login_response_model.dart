/// POST `/api/v1/users/login` veya `/token/refresh` — başarılı `data` objesi.
///
/// ```json
/// { "accessToken": "...", "tokenType": "Bearer", "expiresIn": 3600, "refreshToken": "..." }
/// ```
class LoginResponseModel {
  const LoginResponseModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    this.refreshToken,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String? refreshToken;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        accessToken: json['accessToken'] as String? ?? '',
        tokenType: json['tokenType'] as String? ?? 'Bearer',
        expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 3600,
        refreshToken: json['refreshToken'] as String?,
      );
}
