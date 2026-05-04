/// Token çifti: login, kayıt sonrası giriş ve token refresh cevabının `data` gövdesi
/// ([response_ext.dataMap] sonrası map).
class AuthTokenResponse {
  const AuthTokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshToken,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String refreshToken;

  factory AuthTokenResponse.fromJson(Map<String, dynamic> json) {
    return AuthTokenResponse(
      accessToken: json['accessToken'] as String? ?? '',
      tokenType: json['tokenType'] as String? ?? 'Bearer',
      expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 0,
      refreshToken: json['refreshToken'] as String? ?? '',
    );
  }
}
