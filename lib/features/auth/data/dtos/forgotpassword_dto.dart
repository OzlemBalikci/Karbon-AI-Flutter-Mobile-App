/// POST /api/v1/users/password/forgot request body
class ForgotPasswordDto {
  const ForgotPasswordDto({
    required this.phoneNumber,
  });

  final String phoneNumber;

  Map<String, dynamic> toJson() => {
        'phoneNumber': phoneNumber,
      };
}

typedef ForgotPasswordRequestModel = ForgotPasswordDto;
