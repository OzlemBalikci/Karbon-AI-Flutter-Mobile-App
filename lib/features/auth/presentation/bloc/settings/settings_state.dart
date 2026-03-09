import 'package:karbon/core/theme/themes.dart';
import 'package:karbon/core/theme/themes.light.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(LightAppTheme()) AppTheme theme,
  }) = _SettingsState;
}
