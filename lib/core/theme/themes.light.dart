import 'package:flutter/material.dart';

import 'package:karbon/core/theme/themes.dart';
import 'package:karbon/core/constants/colors.dart';

class LightAppTheme extends AppTheme {
  const LightAppTheme()
      : super(
          name: 'light',
          brightness: Brightness.light,
          colors: const AppThemeColors(
            primarySwatch: Colors.teal,
            primary: Color(0xFF68AC8A),
            secondary: Color(0xFFFFFFFF),
            textOnPrimary: Color(0xFFFFFFFF),
            textOnSecondary: Color(0xFF68AC8A),
            background: Color(0xFFFDFFFE),
            textOnHint: Color(0xFF68AC8A),
            backgroundDescription: Color(0xFFFFFFFF),
            textOnQuestion: Color(0xFF636D87),
            carbonQuestion: Color(0xFF0B7942),
            success: Color(0xFF68AC8A),
            alert: Color(0xFFFF6260),
            warning: Color(0xFFFF9D5C),
            error: Color(0xFFFA6555),
            text: Color(0xFFFFFFFF),
            textBlack: Color(0xFF191C24),
            border: Color(0xFFEBEBEB),
            hint: Color(0xB2597165),
            buttonDisabled: Color(0xFFB6B6B6),
          ),
        );
}
