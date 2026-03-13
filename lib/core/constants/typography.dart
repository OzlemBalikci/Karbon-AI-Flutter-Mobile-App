import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemeTypography {
  final TextStyle headingLarge;
  final TextStyle headingMedium;
  final TextStyle headingSmall;
  final TextStyle bodyExtraLarge;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodyMediumSmall;
  final TextStyle bodySmall;
  final TextStyle bodyExtraSmall;
  final TextStyle captionLarge;
  final TextStyle captionMedium;
  final TextStyle captionSmall;

  const AppThemeTypography({
    this.headingLarge = const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w800,
    ),
    this.headingMedium = const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
    ),
    this.headingSmall = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    this.bodyExtraLarge = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    this.bodyLarge = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    this.bodyMedium = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    this.bodyMediumSmall = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    this.bodySmall = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    this.bodyExtraSmall = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.captionLarge = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    this.captionMedium = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.captionSmall = const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ),
  });

  AppThemeTypography get spScaled => AppThemeTypography(
        headingLarge:
            headingLarge.copyWith(fontSize: (headingLarge.fontSize ?? 32).sp),
        headingMedium:
            headingMedium.copyWith(fontSize: (headingMedium.fontSize ?? 28).sp),
        headingSmall:
            headingSmall.copyWith(fontSize: (headingSmall.fontSize ?? 24).sp),
        bodyExtraLarge: bodyExtraLarge.copyWith(
            fontSize: (bodyExtraLarge.fontSize ?? 20).sp),
        bodyLarge: bodyLarge.copyWith(fontSize: (bodyLarge.fontSize ?? 18).sp),
        bodyMedium:
            bodyMedium.copyWith(fontSize: (bodyMedium.fontSize ?? 17).sp),
        bodyMediumSmall: bodyMediumSmall.copyWith(
            fontSize: (bodyMediumSmall.fontSize ?? 16).sp),
        bodySmall: bodySmall.copyWith(fontSize: (bodySmall.fontSize ?? 14).sp),
        bodyExtraSmall: bodyExtraSmall.copyWith(
            fontSize: (bodyExtraSmall.fontSize ?? 12).sp),
        captionLarge:
            captionLarge.copyWith(fontSize: (captionLarge.fontSize ?? 14).sp),
        captionMedium:
            captionMedium.copyWith(fontSize: (captionMedium.fontSize ?? 12).sp),
        captionSmall:
            captionSmall.copyWith(fontSize: (captionSmall.fontSize ?? 10).sp),
      );

  AppThemeTypography lerp(covariant dynamic other, double t) {
    //Bu fonksiyon, iki tema arasında yumuşak geçiş (interpolation) yapar.
    if (other is! AppThemeTypography) return this;

    return AppThemeTypography(
      headingLarge: TextStyle.lerp(headingLarge, other.headingLarge, t)!,
      headingMedium: TextStyle.lerp(headingMedium, other.headingMedium, t)!,
      headingSmall: TextStyle.lerp(headingSmall, other.headingSmall, t)!,
      bodyExtraLarge: TextStyle.lerp(bodyExtraLarge, other.bodyExtraLarge, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyMediumSmall:
          TextStyle.lerp(bodyMediumSmall, other.bodyMediumSmall, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodyExtraSmall: TextStyle.lerp(bodyExtraSmall, other.bodyExtraSmall, t)!,
      captionLarge: TextStyle.lerp(captionLarge, other.captionLarge, t)!,
      captionMedium: TextStyle.lerp(captionMedium, other.captionMedium, t)!,
      captionSmall: TextStyle.lerp(captionSmall, other.captionSmall, t)!,
    );
  }
}
