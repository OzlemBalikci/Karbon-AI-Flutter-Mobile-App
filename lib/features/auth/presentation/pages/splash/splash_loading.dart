import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key});

  static const _durationMs = 200;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppThemeSpacing.r5.r),
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: _durationMs),
          curve: Curves.easeOutCubic,
          builder: (context, animatedValue, _) => LinearProgressIndicator(
            value: animatedValue,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r5.r),
            backgroundColor: context.colors.primary.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation<Color>(context.colors.primary),
            minHeight: 10.h,
          ),
        ),
      ),
    );
  }
}
