import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthLocal)
class AuthLocalImpl implements AuthLocal {
  AuthLocalImpl(this._prefs);
  final SharedPreferences _prefs;

  static const _keyToken = 'auth_token';
  static const _keyRefresh = 'auth_refresh_token';

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
  Future<String?> getRefreshToken() async {
    final v = _prefs.getString(_keyRefresh);
    return (v?.isEmpty ?? true) ? null : v;
  }

  @override
  Future<void> saveRefreshToken(String? refreshToken) async {
    if (refreshToken == null || refreshToken.isEmpty) {
      await _prefs.remove(_keyRefresh);
    } else {
      await _prefs.setString(_keyRefresh, refreshToken);
    }
  }

  @override
  Future<void> clearSession() async {
    await _prefs.remove(_keyToken);
    await _prefs.remove(_keyRefresh);
  }
}
