/// POST `/api/v1/users/register` — `data` alanı kullanıcı UUID string'i.
class RegisterResponseModel {
  const RegisterResponseModel();

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel();
  }
}
