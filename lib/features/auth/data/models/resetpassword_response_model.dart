/// POST /api/v1/users/password/reset başarılı yanıtı — `data: null`
class ResetPasswordResponseModel {
  const ResetPasswordResponseModel();

  factory ResetPasswordResponseModel.fromJson(Map<String, dynamic> _) =>
      const ResetPasswordResponseModel();
}
