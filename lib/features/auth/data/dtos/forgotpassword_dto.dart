/// POST /api/v1/users/password/forgot request body
class ForgotPasswordDto {
  const ForgotPasswordDto({
    required this.phoneNumber,
    this.deviceToken,
  });

  final String phoneNumber;

  /// FCM token; backend şifre sıfırlama OTP’sini push ile göndermek için kullanır.
  final String? deviceToken;

  Map<String, dynamic> toJson() => {
        'phoneNumber': phoneNumber,
        if (deviceToken != null && deviceToken!.isNotEmpty)
          'deviceToken': deviceToken,
      };
}

typedef ForgotPasswordRequestModel = ForgotPasswordDto;
