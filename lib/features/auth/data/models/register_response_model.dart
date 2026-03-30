/// POST `/api/v1/users/register` — başarılı yanıtın `data` alanı.
///
/// Backend kayıtlı kullanıcının UUID'sini düz string olarak döndürür:
/// ```json
/// { "isSuccess": true, "data": "3fa85f64-5717-4562-b3fc-2c963f66afa6" }
/// ```
class RegisterResponseModel {
  const RegisterResponseModel({required this.userId});

  final String userId;

  factory RegisterResponseModel.fromData(dynamic data) =>
      RegisterResponseModel(userId: data as String? ?? '');
}
