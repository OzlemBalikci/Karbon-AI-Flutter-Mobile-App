part of '../calendar.dart';

class _CalendarButtonShell extends StatelessWidget {
  const _CalendarButtonShell({required this.child});

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

  static final _monthYearFormat = DateFormat('MMMM yyyy', 'tr');

  @override
  Widget build(BuildContext context) {
    final prevMonth = DateTime(focusedDay.year, focusedDay.month - 1, 1);
    final nextMonth = DateTime(focusedDay.year, focusedDay.month + 1, 1);
    final prevLabel = _monthYearFormat.format(prevMonth);
    final nextLabel = _monthYearFormat.format(nextMonth);

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: GestureDetector(
              onTap: onPreviousMonth,
              behavior: HitTestBehavior.opaque,
              child: _CalendarButtonShell(
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
              child: _CalendarButtonShell(
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
  const DayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: _CalendarButtonShell(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s8.w),
                child: Text(
                  '1-15 Aralık',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: AppThemeSpacing.s12.w),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            child: _CalendarButtonShell(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s8.w),
                child: Text(
                  '16-31 Aralık',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
