import 'package:flutter/material.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/spacing.dart';

class AppHeaderTitle extends StatelessWidget {
  const AppHeaderTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: AppThemeSpacing.s10.h),
        Text(
          title,
          style: context.typographiesSp.headingSmall
              .copyWith(color: context.colors.textBlack),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
