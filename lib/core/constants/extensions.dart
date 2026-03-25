import 'package:flutter/material.dart';
import 'package:karbon/core/constants/colors.dart';
import 'package:karbon/core/constants/typography.dart';
import 'package:karbon/core/theme/themes.dart';
import 'package:karbon/core/theme/themes.light.dart';
import 'package:karbon/l10n/app_localizations.dart';

extension AppThemeExtension on BuildContext {
  AppTheme get appTheme =>
      Theme.of(this).extension<AppTheme>() ?? const LightAppTheme();

  AppThemeTypography get typographies => appTheme.typographies;

  AppThemeTypography get typographiesSp => appTheme.typographies.spScaled;

  AppThemeColors get colors => appTheme.colors;
}

extension TextStyleExtension on TextStyle {
  TextStyle withHeight(double? height) => copyWith(height: height);

  TextStyle withColor(Color? color) => copyWith(color: color);

  TextStyle withSize(double? size) => copyWith(fontSize: size);

  TextStyle withWeight(FontWeight? weight) =>
      merge(TextStyle(fontWeight: weight));
}

extension ContextL10n on BuildContext {
  AppLocalizations get text => AppLocalizations.of(this);
}
