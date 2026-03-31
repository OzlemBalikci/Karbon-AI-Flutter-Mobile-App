part of '../../../profile.dart';

class ProfileTreeFeatureSection extends StatelessWidget {
  const ProfileTreeFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            PointScoreOrTreeDonationInfoCard(
                title: context.text.profile_tree_card_header_text,
                color: Color(0xFF0B7942),
                value: '1270'),
            SizedBox(height: AppThemeSpacing.s20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  context.text.profile_tree_last_donations,
                  style: context.typographiesSp.bodyMediumSmall
                      .copyWith(color: context.colors.textBlack),
                ),
              ],
            ),
            SizedBox(height: AppThemeSpacing.s20.h),
            DonatedTreeCard(),
            SizedBox(height: AppThemeSpacing.s30.h),
          ],
        ),
      ),
    );
  }
}
