import 'package:flutter/material.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenTitlesWidget extends StatelessWidget {
  const ScreenTitlesWidget({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s22.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: context.typographiesSp.bodyExtraLarge.copyWith(
                color: context.colors.text,
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: '${text.split('\n').first}\n',
                ),
                TextSpan(
                  text: text.split('\n').length > 1
                      ? text.split('\n').sublist(1).join('\n')
                      : '',
                  style: context.typographiesSp.bodyExtraLarge.copyWith(
                    color: context.colors.text,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
