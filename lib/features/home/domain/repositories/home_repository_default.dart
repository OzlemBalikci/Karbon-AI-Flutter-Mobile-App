import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HomeRepository {
  Future<DateTime?> getLastSurveyDate();
  Future<void> saveLastSurveyDate(DateTime date);
}

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  static const _surveyDateKey = 'lastSurveyDate';

  @override
  Future<DateTime?> getLastSurveyDate() async {
    final prefs = await SharedPreferences.getInstance();
    final lastDateStr = prefs.getString(_surveyDateKey);
    return lastDateStr != null ? DateTime.parse(lastDateStr) : null;
  }

  @override
  Future<void> saveLastSurveyDate(DateTime date) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_surveyDateKey, date.toIso8601String());
  }
}
