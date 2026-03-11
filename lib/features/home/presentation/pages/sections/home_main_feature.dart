part of '../home.dart';

class HomeMainFeatureSection extends StatelessWidget {
  const HomeMainFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w25),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            StatsCardRow(),
            SizedBox(height: 25.h),
            LeaderSectionHeader(),
            SizedBox(height: 15.h),
            LeaderCardRow(),
          ],
        ),
      ),
    );
  }
}
