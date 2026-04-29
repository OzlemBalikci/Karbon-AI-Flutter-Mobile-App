part of '../daydetail.dart';

class DaydetailHeaderSection extends StatelessWidget {
  const DaydetailHeaderSection({
    super.key,
    required this.dayLabel,
    required this.dayScore,
  });

  /// [DailyReportCard] ile aynı: [formatFullDate]
  final String dayLabel;
  final String dayScore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppHeaderTitle(
            title: '$dayLabel Cevaplar',
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          ScoreCard(
            bgColor: context.colors.secondary,
            bgImage: Assets.images.calendarMask2.provider(),
            title: dayLabel,
            score: dayScore,
            text: 'Karbon Ayak İzi Skoru',
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          Text(
            context.text.lorem_ipsum,
            style: context.typographiesSp.bodyExtraSmall
                .withColor(context.colors.textOnQuestion),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
