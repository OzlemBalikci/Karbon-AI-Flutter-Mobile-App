import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AuthLaunchLocal)
class AuthLaunchLocalImpl implements AuthLaunchLocal {
  AuthLaunchLocalImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _key = 'karbon_custom_first_open_completed';

  @override
  Future<bool> isCustomFirstOpenCompleted() async =>
      _prefs.getBool(_key) ?? false;

  @override
  Future<void> setCustomFirstOpenCompleted() async {
    await _prefs.setBool(_key, true);
  }

  @override
  Future<void> clearCustomFirstOpenCompleted() async {
    await _prefs.remove(_key);
  }
}
