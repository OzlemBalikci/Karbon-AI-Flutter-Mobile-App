class ResetPasswordDto {
  const ResetPasswordDto({
    required this.phoneNumber,
    required this.resetCode,
    required this.newPassword,
    required this.confirmNewPassword,
  });

  final String phoneNumber;

  /// SMS ile gelen 5 haneli OTP kodu
  final String resetCode;
  final String newPassword;
  final String confirmNewPassword;

  Map<String, dynamic> toJson() => {
        'phoneNumber': phoneNumber,
        'resetCode': resetCode,
        'newPassword': newPassword,
        'confirmNewPassword': confirmNewPassword,
      };
}

typedef ResetPasswordRequestModel = ResetPasswordDto;
