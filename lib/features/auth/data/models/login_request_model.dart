/// POST /api/v1/users/login request body
class LoginRequestModel {
  const LoginRequestModel({
    required this.emailorIdentityNumber,
    required this.password,
  });

  final String emailorIdentityNumber;
  final String password;

  Map<String, dynamic> toJson() => {
        'emailorIdentityNumber': emailorIdentityNumber,
        'password': password,
      };
}
