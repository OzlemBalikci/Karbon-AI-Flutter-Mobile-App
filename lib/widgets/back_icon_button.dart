import 'package:flutter/material.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/spacing.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (context.router.canPop()) {
          context.router.maybePop();
        }
      },
      icon: Assets.icons.iconbackbutton
          .svg(width: AppThemeSpacing.s24.w, height: AppThemeSpacing.s24.h),
    );
  }
}
