abstract class AuthLocal {
  Future<bool> hasSession();
  Future<void> saveSession(String userId);
  Future<void> clearSession();
}
