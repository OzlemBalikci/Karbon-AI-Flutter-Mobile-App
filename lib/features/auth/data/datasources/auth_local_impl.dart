import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthLocal)
class AuthLocalImpl implements AuthLocal {
  AuthLocalImpl(this._prefs);
  final SharedPreferences _prefs;

  static const _keyUserId = 'auth_user_id';

  @override
  Future<bool> hasSession() async {
    return _prefs.containsKey(_keyUserId) &&
        (_prefs.getString(_keyUserId) ?? '').isNotEmpty;
  }

  @override
  Future<void> saveSession(String userId) async {
    await _prefs.setString(_keyUserId, userId);
  }

  @override
  Future<void> clearSession() async {
    await _prefs.remove(_keyUserId);
  }
}
