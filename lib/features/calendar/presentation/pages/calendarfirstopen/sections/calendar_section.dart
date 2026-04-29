import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

import '../widgets/button.dart';
import '../widgets/calendar_box.dart';
import '../widgets/score_card.dart';

class CalendarSection extends StatelessWidget {
  const CalendarSection({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.monthTotalScore,
    required this.selectedDayScore,
    required this.onDaySelected,
    required this.onPageChanged,
    required this.onPreviousMonth,
    required this.onNextMonth,
    this.onShowAll,
  });

  final DateTime focusedDay;
  final DateTime selectedDay;
  final String monthTotalScore;
  final String selectedDayScore;
  final void Function(DateTime selected, DateTime focused) onDaySelected;
  final ValueChanged<DateTime> onPageChanged;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;
  final VoidCallback? onShowAll;

  @override
  Widget build(BuildContext context) {
    final monthTitle = formatMonthYear(focusedDay);
    final selectedDayTitle = formatFullDate(selectedDay);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CalendarBox(
              focusedDay: focusedDay,
              selectedDay: selectedDay,
              onDaySelected: onDaySelected,
              onPageChanged: onPageChanged,
              onShowAll: onShowAll,
            ),
            Positioned(
              left: AppThemeSpacing.s25.w,
              right: AppThemeSpacing.s25.w,
              bottom: -AppThemeSpacing.s15.h,
              child: MonthChangeButtonRow(
                focusedDay: focusedDay,
                onPreviousMonth: onPreviousMonth,
                onNextMonth: onNextMonth,
              ),
            ),
          ],
        ),
        SizedBox(height: AppThemeSpacing.s30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Column(
            children: [
              ScoreCard(
                bgColor: Color(0xFF4E9E75).withValues(alpha: 0.2),
                bgImage: null,
                title: monthTitle,
                text: 'Ayı Karbon Puanı',
                score: monthTotalScore,
              ),
              SizedBox(height: AppThemeSpacing.s10.h),
              ScoreCard(
                bgColor: context.colors.secondary,
                bgImage: Assets.images.calendarMask2.provider(),
                title: selectedDayTitle,
                text: 'Karbon Ayak İzi Skoru',
                score: selectedDayScore,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
