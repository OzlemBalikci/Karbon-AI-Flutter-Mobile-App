import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:karbon/core/constants/assets.gen.dart';
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

  // Pazartesi başlangıçlı ay için hafta satırı sayısı.
  static int _rowCount(DateTime d) {
    final first = DateTime(d.year, d.month, 1);
    final last = DateTime(d.year, d.month + 1, 0);
    final before = (first.weekday - 1) % 7;
    final after = last.weekday == 7 ? 0 : 7 - last.weekday;
    return ((before + last.day + after) / 7).ceil().clamp(1, 6);
  }

  // MonthChangeButtonRow kutunun altına binmemesi için alt boşluk.
  static double _bottomInset(BuildContext ctx) =>
      (AppThemeSpacing.s15.h * 2 + AppThemeSpacing.s12.h)
          .clamp(AppThemeSpacing.s40.h, AppThemeSpacing.s80.h);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(fit: StackFit.expand, children: [
        Positioned.fill(
          child: ColoredBox(
            color: context.colors.primary,
            child: Image.asset(Assets.images.calendarMask.path,
                fit: BoxFit.cover, alignment: Alignment.topCenter),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: AppThemeSpacing.s25.w,
            right: AppThemeSpacing.s25.w,
            top: MediaQuery.paddingOf(context).top,
            bottom: _bottomInset(context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(context.text.calendar_page_title,
                  textAlign: TextAlign.center,
                  style: context.typographiesSp.headingSmall
                      .withColor(context.colors.text)),
              SizedBox(height: AppThemeSpacing.s16.h),
              Row(children: [
                Expanded(
                  child: Text(DateFormat('MMMM yyyy', 'tr').format(focusedDay),
                      style: context.typographiesSp.bodyMedium
                          .withColor(context.colors.text)),
                ),
                GestureDetector(
                  onTap: () => context.router.push(const SeeAllRoute()),
                  behavior: HitTestBehavior.opaque,
                  child: CalendarButtonShell(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppThemeSpacing.s22.w),
                      child: Text(context.text.calendar_show_all_button,
                          style: context.typographiesSp.bodySmall
                              .withColor(context.colors.textOnSecondary)
                              .withWeight(FontWeight.w600)),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: AppThemeSpacing.s16.h),
              Expanded(child: LayoutBuilder(builder: (context, box) {
                final h = box.maxHeight;
                if (h <= 0) return const SizedBox.shrink();

                final rows = _rowCount(focusedDay);
                final dowH = (h * 0.18).clamp(10.h, h * 0.42);
                final rowH = ((h - dowH) / rows).clamp(0.0, 56.h);
                final margin =
                    (rowH < 40.h ? rowH / 40.h : 1.0) * AppThemeSpacing.s4.r;

                final bold = context.typographiesSp.bodyMediumSmall
                    .withColor(context.colors.secondary)
                    .withWeight(FontWeight.w600);
                final muted = context.typographiesSp.bodyMediumSmall.withColor(
                    context.colors.secondary.withValues(alpha: 0.536));
                final small = context.typographiesSp.bodySmall;

                return SizedBox(
                  height: h,
                  width: double.infinity,
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
                    daysOfWeekHeight: dowH,
                    rowHeight: rowH,
                    calendarStyle: CalendarStyle(
                      cellMargin: EdgeInsets.all(margin),
                      outsideDaysVisible: true,
                      outsideTextStyle: muted,
                      defaultTextStyle: bold,
                      weekendTextStyle: bold,
                      holidayTextStyle: bold,
                      selectedDecoration: BoxDecoration(
                          color: context.colors.secondary,
                          shape: BoxShape.circle),
                      selectedTextStyle:
                          small.withColor(context.colors.carbonQuestion),
                      todayDecoration:
                          const BoxDecoration(shape: BoxShape.circle),
                      todayTextStyle: small.withColor(context.colors.text),
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: muted, weekendStyle: muted),
                  ),
                );
              })),
            ],
          ),
        ),
      ]),
    );
  }
}
