part of '../home.dart';

class HomeMainFeatureSection extends StatelessWidget {
  const HomeMainFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w25),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StatsCardRow(),
            SizedBox(height: 30.h),
            LeaderSectionHeader(),
            SizedBox(height: 15.h),
            LeaderCardRow(),
            SizedBox(height: 25.h),
            HomeMainBottomButton(),
          ],
        ),
      ),
    );
  }
}
