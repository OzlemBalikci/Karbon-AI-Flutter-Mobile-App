import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/router/navigation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/widgets/score_badge.dart';

class DailyReportCard extends StatelessWidget {
  const DailyReportCard({
    super.key,
    required this.date,
    required this.score,
    this.onTap,
  });

  final DateTime date;
  final double score;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dayLabel = formatFullDate(date);
    final weekdayLabel = formatWeekday(date);

    return GestureDetector(
      onTap: () =>
          context.router.push(DayDetailRoute(date: date.toIso8601String())),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.secondary,
          borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFE4E6E9),
              offset: Offset(0, 2),
              blurRadius: 23,
            )
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
                        dayLabel,
                        style: context.typographiesSp.bodyLarge.withColor(
                          context.colors.textOnQuestion,
                        ),
                      ),
                      SizedBox(height: AppThemeSpacing.s4.h),
                      Text(
                        weekdayLabel,
                        style: context.typographiesSp.bodySmall.withColor(
                          context.colors.textOnQuestion,
                        ),
                      ),
                    ],
                  ),
                  ScoreBadge(score: score),
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
      ),
    );
  }
}
