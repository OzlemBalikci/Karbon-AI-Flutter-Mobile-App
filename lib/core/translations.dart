import 'dart:convert';
import 'package:flutter/services.dart';

class AppTranslations {
  static Map<String, dynamic>? _translations;
  static bool _isLoaded = false;

  static Future<void> loadTranslations() async {
    if (_isLoaded) return;
    try {
      final String jsonString =
          await rootBundle.loadString('assets/translations/tr.json');
      final List<dynamic> jsonList = jsonDecode(jsonString);
      if (jsonList.isNotEmpty) {
        _translations = jsonList[0] as Map<String, dynamic>;
      }
      _isLoaded = true;
    } catch (e) {
      _translations = {};
      _isLoaded = true;
    }
  }

  static String get(String key, {String defaultValue = ''}) {
    if (_translations == null || !_isLoaded) {
      return defaultValue;
    }
    return _translations![key]?.toString() ?? defaultValue;
  }
}
