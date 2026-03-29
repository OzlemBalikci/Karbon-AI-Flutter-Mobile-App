/// POST /api/v1/users/password/forgot request body
class ForgotPasswordRequestModel {
  const ForgotPasswordRequestModel({required this.phoneNumber});

  final String phoneNumber;

  Map<String, dynamic> toJson() => {'phoneNumber': phoneNumber};
}
