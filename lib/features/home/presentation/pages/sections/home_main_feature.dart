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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StatsCardRow(),
            SizedBox(height: AppThemeSpacing.s40.h),
            LeaderSectionHeader(),
            SizedBox(height: AppThemeSpacing.s30.h),
            HomeTopLeadersSelector(
              builder: (leaders) {
                return LeaderCardRow(
                  leaders: leaders,
                  variant: LeaderCardVariant.compact,
                  seeOtherCard: SeeOtherLeaderCard(),
                );
              },
            ),
            SizedBox(height: AppThemeSpacing.s30.h),
            HomeMainBottomButton(),
          ],
        ),
      ),
    );
  }
}
