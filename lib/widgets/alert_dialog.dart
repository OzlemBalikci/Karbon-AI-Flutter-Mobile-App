import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

class SnackBarMessage extends StatelessWidget {
  const SnackBarMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: context.colors.textOnQuestion.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
      ),
      child: Column(
        children: [
          SnackBar(
            content: Text(
              context.text.carbon_calculate_question_next_warning_title,
              style: context.typographiesSp.bodySmall
                  .copyWith(color: context.colors.textOnQuestion),
            ),
            duration: Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
          ),
        ],
      ),
    );
  }
}
