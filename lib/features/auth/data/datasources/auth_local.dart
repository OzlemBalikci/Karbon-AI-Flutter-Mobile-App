abstract class AuthLocal {
  Future<bool> hasSession();
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<String?> getRefreshToken();
  Future<void> saveRefreshToken(String? refreshToken);

  Future<void> clearSession();
}
