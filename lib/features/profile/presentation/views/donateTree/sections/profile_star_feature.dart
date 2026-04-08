part of '../../../profile.dart';

class ProfileStarFeatureSection extends StatelessWidget {
  const ProfileStarFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PointScoreOrTreeDonationInfoCard(
              title: context.text.profile_star_text(
                  context.text.profile_star_total_point_text),
              color: Color(0xFFEA8778),
              value: '1200'),
          SizedBox(height: AppThemeSpacing.s30.h),
          TreeDonationInfoCard(),
          SizedBox(height: AppThemeSpacing.s30.h),
          DonateTreeButton(),
        ],
      ),
    );
  }
}
