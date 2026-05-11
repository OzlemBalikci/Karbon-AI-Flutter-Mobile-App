part of '../daydetail.dart';

class DayDetailListSection extends StatelessWidget {
  const DayDetailListSection({
    super.key,
    this.detail,
  });

  final DailyDayDetailEntity? detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.text.calendar_daydetail_title,
            style: context.typographiesSp.bodyMediumSmall
                .withColor(context.colors.textBlack)
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          if (detail != null)
            DayDetailHistorySection(activities: detail!.activities),
        ],
      ),
    );
  }
}
