part of '../home.dart';

class HomeMainFeatureSection extends StatelessWidget {
  const HomeMainFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StatsCardRow(),
            SizedBox(height: AppThemeSpacing.s30.h),
            LeaderSectionHeader(),
            SizedBox(height: AppThemeSpacing.s15.h),
            LeaderCardRow(
                variant: LeaderCardVariant.compact,
                seeOtherCard: SeeOtherLeaderCard()),
            SizedBox(height: AppThemeSpacing.s25.h),
            HomeMainBottomButton(),
          ],
        ),
      ),
    );
  }
}
