import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/score_badge.dart';

class DailyReportCard extends StatelessWidget {
  const DailyReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000).withValues(alpha: 0.15),
            offset: const Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 25,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppThemeSpacing.s15.w,
                vertical: AppThemeSpacing.s15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 Aralık 2023',
                      style: context.typographiesSp.bodyLarge.withColor(
                        context.colors.textOnQuestion,
                      ),
                    ),
                    SizedBox(height: AppThemeSpacing.s4.h),
                    Text(
                      'Cuma',
                      style: context.typographiesSp.bodySmall.withColor(
                        context.colors.textOnQuestion,
                      ),
                    ),
                  ],
                ),
                ScoreBadge(score: 55),
              ],
            ),
          ),
          ClipRect(
            child: ColoredBox(
              color: context.colors.primary,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppThemeSpacing.s15.w,
                  vertical: AppThemeSpacing.s15.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.text.calendar_seeallcard_title,
                      style: context.typographiesSp.bodySmall.withColor(
                        context.colors.textOnPrimary,
                      ),
                    ),
                    Assets.icons.seeallcardicon.svg(
                      width: AppThemeSpacing.s20.w,
                      height: AppThemeSpacing.s20.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
