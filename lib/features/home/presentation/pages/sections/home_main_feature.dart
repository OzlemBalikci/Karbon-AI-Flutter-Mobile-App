part of '../home.dart';

class HomeMainFeatureSection extends StatelessWidget {
  const HomeMainFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatsCardRow(),
            LeaderSectionHeader(),
            HomeTopLeadersSelector(
              builder: (leaders) {
                return LeaderCardRow(
                  leaders: leaders,
                  variant: LeaderCardVariant.compact,
                  seeOtherCard: SeeOtherLeaderCard(),
                );
              },
            ),
            HomeMainBottomButton(),
          ],
        ),
      ),
    );
  }
}
