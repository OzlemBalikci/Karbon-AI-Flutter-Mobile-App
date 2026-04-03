import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: CarbonCalculateLocal)
class CarbonCalculateLocalImpl implements CarbonCalculateLocal {
  CarbonCalculateLocalImpl(this._prefs);

  final SharedPreferences _prefs;

  static const _keyActivePollJson = 'carbon_calculate_active_poll_json';

  @override
  Future<void> saveActivePollJson(String json) async {
    await _prefs.setString(_keyActivePollJson, json);
  }

  @override
  Future<String?> getActivePollJson() async {
    final v = _prefs.getString(_keyActivePollJson);
    if (v == null || v.isEmpty) {
      return null;
    }
    return v;
  }

  @override
  Future<void> clearActivePollCache() async {
    await _prefs.remove(_keyActivePollJson);
  }
}
