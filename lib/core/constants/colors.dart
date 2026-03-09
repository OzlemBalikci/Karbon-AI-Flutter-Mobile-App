import 'package:flutter/material.dart';

class AppThemeColors {
  final MaterialColor primarySwatch;
  final Color primary;
  final Color secondary;
  final Color textOnPrimary;
  final Color textOnSecondary;
  final Color background;
  final Color textOnHint;
  final Color backgroundDescription;
  final Color textOnQuestion;
  final Color carbonQuestion;
  final Color success;
  final Color alert;
  final Color warning;
  final Color error;
  final Color text;
  final Color textBlack;
  final Color border;
  final Color hint;

  const AppThemeColors({
    required this.primarySwatch,
    required this.primary,
    required this.secondary,
    required this.textOnPrimary,
    required this.textOnSecondary,
    required this.background,
    required this.textOnHint,
    required this.backgroundDescription,
    required this.textOnQuestion,
    required this.carbonQuestion,
    required this.success,
    required this.alert,
    required this.warning,
    required this.error,
    required this.text,
    required this.textBlack,
    required this.border,
    required this.hint,
  });

  AppThemeColors lerp(covariant dynamic other, double t) {
    if (other is! AppThemeColors) {
      return this;
    }
    return AppThemeColors(
      primarySwatch: primarySwatch,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t)!,
      textOnSecondary: Color.lerp(textOnSecondary, other.textOnSecondary, t)!,
      background: Color.lerp(background, other.background, t)!,
      textOnHint: Color.lerp(textOnHint, other.textOnHint, t)!,
      backgroundDescription:
          Color.lerp(backgroundDescription, other.backgroundDescription, t)!,
      textOnQuestion: Color.lerp(textOnQuestion, other.textOnQuestion, t)!,
      carbonQuestion: Color.lerp(carbonQuestion, other.carbonQuestion, t)!,
      success: Color.lerp(success, other.success, t)!,
      alert: Color.lerp(alert, other.alert, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      text: Color.lerp(text, other.text, t)!,
      textBlack: Color.lerp(textBlack, other.textBlack, t)!,
      border: Color.lerp(border, other.border, t)!,
      hint: Color.lerp(hint, other.hint, t)!,
    );
  }

  AppThemeColors copyWith({
    MaterialColor? primarySwatch,
    Color? primary,
    Color? secondary,
    Color? textOnPrimary,
    Color? textOnSecondary,
    Color? background,
    Color? backgroundDescription,
    Color? textOnHint,
    Color? textOnQuestion,
    Color? carbonQuestion,
    Color? success,
    Color? alert,
    Color? warning,
    Color? error,
    Color? text,
    Color? textBlack,
    Color? border,
    Color? hint,
  }) {
    return AppThemeColors(
      primarySwatch: primarySwatch ?? this.primarySwatch,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      textOnPrimary: textOnPrimary ?? this.textOnPrimary,
      textOnSecondary: textOnSecondary ?? this.textOnSecondary,
      background: background ?? this.background,
      textOnHint: textOnHint ?? this.textOnHint,
      backgroundDescription:
          backgroundDescription ?? this.backgroundDescription,
      textOnQuestion: textOnQuestion ?? this.textOnQuestion,
      carbonQuestion: carbonQuestion ?? this.carbonQuestion,
      success: success ?? this.success,
      alert: alert ?? this.alert,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      text: text ?? this.text,
      textBlack: textBlack ?? this.textBlack,
      border: border ?? this.border,
      hint: hint ?? this.hint,
    );
  }
}

abstract class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color beige = Color(0xFFA8A878);
  static const Color black = Color(0xFF303943);
  static const Color blue = Color(0xFF429BED);
  static const Color brown = Color(0xFFB1736C);
  static const Color darkBrown = Color(0xD0795548);
  static const Color grey = Color(0x64303943);
  static const Color indigo = Color(0xFF6C79DB);
  static const Color lightBlue = Color(0xFF7AC7FF);
  static const Color lightBrown = Color(0xFFCA8179);
  static const Color whiteGrey = Color(0xFFFDFDFD);
  static const Color lightCyan = Color(0xFF98D8D8);
  static const Color lightGreen = Color(0xFF78C850);
  static const Color lighterGrey = Color(0xFFF4F5F4);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color lightPink = Color(0xFFEE99AC);
  static const Color lightPurple = Color(0xFF9F5BBA);
  static const Color lightRed = Color(0xFFFB6C6C);
  static const Color lightTeal = Color(0xFF48D0B0);
  static const Color lightYellow = Color(0xFFFFCE4B);
  static const Color lilac = Color(0xFFA890F0);
  static const Color pink = Color(0xFFF85888);
  static const Color purple = Color(0xFF7C538C);
  static const Color red = Color(0xFFFA6555);
  static const Color teal = Color(0xFF4FC1A6);
  static const Color yellow = Color(0xFFF6C747);
  static const Color semiGrey = Color(0xFFbababa);
  static const Color violet = Color(0xD07038F8);
  static const Color orange = Color(0xFFFF9D5C);
}
