class LoginRequestDto {
  const LoginRequestDto({
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

typedef LoginRequestModel = LoginRequestDto;
