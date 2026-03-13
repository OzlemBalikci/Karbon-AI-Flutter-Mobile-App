import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/spacing.dart';

class Infocard extends StatelessWidget {
  const Infocard({
    super.key,
    required this.text,
    required this.style,
    required this.bgcolor,
  });

  final String text;
  final TextStyle style;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 57.h),
      decoration: BoxDecoration(
        color: bgcolor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s15.w, vertical: AppThemeSpacing.s10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: style,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
