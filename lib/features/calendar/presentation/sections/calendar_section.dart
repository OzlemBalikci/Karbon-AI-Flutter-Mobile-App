part of '../calendar.dart';

class CalendarSection extends StatelessWidget {
  const CalendarSection({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.onDaySelected,
    required this.onPageChanged,
    required this.onPreviousMonth,
    required this.onNextMonth,
    this.onShowAll,
  });

  final DateTime focusedDay;
  final DateTime selectedDay;
  final void Function(DateTime selected, DateTime focused) onDaySelected;
  final ValueChanged<DateTime> onPageChanged;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;
  final VoidCallback? onShowAll;

  @override
  Widget build(BuildContext context) {
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
                title: 'Aralık 2024',
                text: 'Ayı Karbon Puanı',
                score: '670',
              ),
              SizedBox(height: AppThemeSpacing.s10.h),
              ScoreCard(
                bgColor: context.colors.secondary,
                bgImage: Assets.images.calendarMask2.provider(),
                title: '6 Aralık 2024',
                text: 'Karbon Ayak İzi Skoru',
                score: '67',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
