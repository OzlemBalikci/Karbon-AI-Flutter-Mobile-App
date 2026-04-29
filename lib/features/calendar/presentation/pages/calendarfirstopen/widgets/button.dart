import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/core/utils/formatters.dart';

class CalendarButtonShell extends StatelessWidget {
  const CalendarButtonShell({super.key, required this.child});

  final Widget child;

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s15.h),
          child: child,
        ),
      ),
    );
  }
}

class MonthChangeButtonRow extends StatelessWidget {
  const MonthChangeButtonRow({
    super.key,
    required this.focusedDay,
    required this.onPreviousMonth,
    required this.onNextMonth,
  });

  final DateTime focusedDay;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;

  @override
  Widget build(BuildContext context) {
    final prevMonth = DateTime(focusedDay.year, focusedDay.month - 1, 1);
    final nextMonth = DateTime(focusedDay.year, focusedDay.month + 1, 1);
    final prevLabel = formatMonthYear(prevMonth);
    final nextLabel = formatMonthYear(nextMonth);

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: onPreviousMonth,
              behavior: HitTestBehavior.opaque,
              child: CalendarButtonShell(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppThemeSpacing.s15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.icons.iconleftbutton.svg(
                          width: AppThemeSpacing.s16.w,
                          height: AppThemeSpacing.s16.h),
                      Flexible(
                        child: Text(
                          prevLabel,
                          style: context.typographiesSp.bodyMediumSmall
                              .copyWith(color: context.colors.primary),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: AppThemeSpacing.s15.w),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: onNextMonth,
              behavior: HitTestBehavior.opaque,
              child: CalendarButtonShell(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppThemeSpacing.s15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          nextLabel,
                          style: context.typographiesSp.bodyMediumSmall
                              .copyWith(color: context.colors.primary),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Assets.icons.iconrightbutton.svg(
                          width: AppThemeSpacing.s16.w,
                          height: AppThemeSpacing.s16.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DayButton extends StatelessWidget {
  const DayButton({
    super.key,
    required this.monthLabel,
    required this.period,
    required this.onPeriodSelected,
  });

  final String monthLabel;
  final int period;
  final ValueChanged<int> onPeriodSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: () => onPeriodSelected(1),
              child: CalendarButtonShell(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppThemeSpacing.s8.w),
                  child: Text(
                    '1–15 $monthLabel',
                    textAlign: TextAlign.center,
                    style: context.typographiesSp.bodySmall
                        .withColor(context.colors.textOnSecondary),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: AppThemeSpacing.s12.w),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: () => onPeriodSelected(2),
              child: CalendarButtonShell(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppThemeSpacing.s8.w),
                  child: Text(
                    '16–31 $monthLabel',
                    textAlign: TextAlign.center,
                    style: context.typographiesSp.bodySmall
                        .withColor(context.colors.textOnSecondary),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
