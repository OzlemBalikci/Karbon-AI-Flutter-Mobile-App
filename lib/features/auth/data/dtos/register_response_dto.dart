/// POST `/api/v1/users/register` — `data` alanı kullanıcı UUID string'i.
class RegisterResponseModel {
  const RegisterResponseModel({required this.userId});

  final String userId;

  factory RegisterResponseModel.fromData(dynamic data) {
    if (data is String) {
      return RegisterResponseModel(userId: data);
    }
    return RegisterResponseModel(userId: data?.toString() ?? '');
  }
}
