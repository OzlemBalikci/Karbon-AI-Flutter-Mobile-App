import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/router/navigation.dart';
import 'package:table_calendar/table_calendar.dart';

import 'button.dart';

class CalendarBox extends StatelessWidget {
  const CalendarBox({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
    required this.onPageChanged,
    this.onShowAll,
    this.aspectRatio = 375 / 430,
  });

  final DateTime focusedDay;
  final DateTime selectedDay;
  final void Function(DateTime selected, DateTime focused) onDaySelected;
  final ValueChanged<DateTime> onPageChanged;
  final VoidCallback? onShowAll;
  final double aspectRatio;

  void _handleShowAll(BuildContext context) {
    if (onShowAll != null) {
      onShowAll!();
      return;
    }
    context.router.push(SeeAllRoute(
      year: focusedDay.year,
      month: focusedDay.month,
      period: selectedDay.day <= 15 ? 1 : 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(fit: StackFit.expand, children: [
        // Arka plan
        ColoredBox(
          color: context.colors.primary,
          child: Image.asset(
            Assets.images.calendarMask.path,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),

        // İçerik
        Padding(
          padding: EdgeInsets.fromLTRB(
            AppThemeSpacing.s25.w,
            MediaQuery.paddingOf(context).top,
            AppThemeSpacing.s25.w,
            AppThemeSpacing.s48.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Başlık
              Text(
                context.text.calendar_page_title,
                textAlign: TextAlign.center,
                style: context.typographiesSp.headingSmall
                    .withColor(context.colors.text),
              ),
              SizedBox(height: AppThemeSpacing.s16.h),
              Row(children: [
                Expanded(
                  child: Text(
                    formatMonthYear(focusedDay),
                    style: context.typographiesSp.bodyMedium
                        .withColor(context.colors.text),
                  ),
                ),
                GestureDetector(
                  onTap: () => _handleShowAll(context),
                  behavior: HitTestBehavior.opaque,
                  child: CalendarButtonShell(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppThemeSpacing.s22.w),
                      child: Text(
                        context.text.calendar_show_all_button,
                        style: context.typographiesSp.bodySmall
                            .withColor(context.colors.textOnSecondary)
                            .withWeight(FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: AppThemeSpacing.s16.h),

              // Takvim
              Expanded(
                child: TableCalendar<void>(
                  locale: 'tr_TR',
                  firstDay: DateTime.utc(2018, 1, 1),
                  lastDay: DateTime.utc(2040, 12, 31),
                  focusedDay: focusedDay,
                  selectedDayPredicate: (d) => isSameDay(d, selectedDay),
                  onDaySelected: onDaySelected,
                  onPageChanged: onPageChanged,
                  calendarFormat: CalendarFormat.month,
                  availableCalendarFormats: const {CalendarFormat.month: ''},
                  headerVisible: false,
                  shouldFillViewport: true,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  daysOfWeekHeight: 32.h,
                  calendarStyle: CalendarStyle(
                    cellMargin: EdgeInsets.all(AppThemeSpacing.s4.r),
                    outsideDaysVisible: true,
                    outsideTextStyle: context.typographiesSp.bodyMediumSmall
                        .withColor(
                            context.colors.secondary.withValues(alpha: 0.536)),
                    defaultTextStyle: context.typographiesSp.bodyMediumSmall
                        .withColor(context.colors.secondary)
                        .withWeight(FontWeight.w600),
                    weekendTextStyle: context.typographiesSp.bodyMediumSmall
                        .withColor(context.colors.secondary)
                        .withWeight(FontWeight.w600),
                    selectedDecoration: BoxDecoration(
                      color: context.colors.secondary,
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: context.typographiesSp.bodySmall
                        .withColor(context.colors.carbonQuestion),
                    todayDecoration:
                        const BoxDecoration(shape: BoxShape.circle),
                    todayTextStyle: context.typographiesSp.bodySmall
                        .withColor(context.colors.text),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: context.typographiesSp.bodyMediumSmall
                        .withColor(
                            context.colors.secondary.withValues(alpha: 0.536)),
                    weekendStyle: context.typographiesSp.bodyMediumSmall
                        .withColor(
                            context.colors.secondary.withValues(alpha: 0.536)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
