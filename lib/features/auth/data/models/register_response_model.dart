/// POST /api/v1/users/register başarılı yanıtının `data` alanı — kayıt olan kullanıcının UUID'si
class RegisterResponseModel {
  const RegisterResponseModel({required this.userId});

  final String userId;

  factory RegisterResponseModel.fromDataField(dynamic data) =>
      RegisterResponseModel(userId: data as String? ?? '');
}
