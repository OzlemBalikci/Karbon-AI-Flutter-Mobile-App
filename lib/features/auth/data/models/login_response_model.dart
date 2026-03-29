/// POST /api/v1/users/login başarılı yanıtının `data` alanı
class LoginResponseModel {
  const LoginResponseModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        accessToken: json['accessToken'] as String? ?? '',
        tokenType: json['tokenType'] as String? ?? 'Bearer',
        expiresIn: (json['expiresIn'] as num?)?.toInt() ?? 3600,
      );
}
