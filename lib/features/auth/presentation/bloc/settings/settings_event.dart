import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/core/theme/themes.dart';

part 'settings_event.freezed.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeChanged(AppTheme theme) =
      SettingsThemeChanged;
}
