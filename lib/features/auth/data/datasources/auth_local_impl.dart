import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthLocal)
class AuthLocalImpl implements AuthLocal {
  AuthLocalImpl(this._prefs);
  final SharedPreferences _prefs;

  static const _keyToken = 'auth_token';

  @override
  Future<bool> hasSession() async {
    return _prefs.containsKey(_keyToken) &&
        (_prefs.getString(_keyToken) ?? '').isNotEmpty;
  }

  @override
  Future<String?> getToken() async {
    final token = _prefs.getString(_keyToken);
    return (token?.isEmpty ?? true) ? null : token;
  }

  @override
  Future<void> saveToken(String token) async {
    await _prefs.setString(_keyToken, token);
  }

  @override
  Future<void> clearSession() async {
    await _prefs.remove(_keyToken);
  }
}
