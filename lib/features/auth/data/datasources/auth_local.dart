abstract class AuthLocal {
  Future<bool> hasSession();
  Future<String?> getToken();
  Future<void> saveToken(String token);
  Future<void> clearSession();
}
