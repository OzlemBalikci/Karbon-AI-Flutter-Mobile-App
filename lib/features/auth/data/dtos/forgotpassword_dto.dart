
class ForgotPasswordDto {
  const ForgotPasswordDto({
    required this.phoneNumber,
    this.deviceToken,
  });

  final String phoneNumber;

  final String? deviceToken;

  Map<String, dynamic> toJson() => {
        'phoneNumber': phoneNumber,
        if (deviceToken != null && deviceToken!.isNotEmpty)
          'deviceToken': deviceToken,
      };
}

typedef ForgotPasswordRequestModel = ForgotPasswordDto;
