part of '../../../profile.dart';

class PointScoreOrTreeDonationInfoCard extends StatelessWidget {
  const PointScoreOrTreeDonationInfoCard({
    super.key,
    required this.title,
    required this.color,
    required this.value,
  });

  final String title;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.profileMask.provider(),
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
        border: Border.all(color: color, width: 1.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s56.w),
            child: Text(
              title,
              maxLines: 2,
              style: context.typographiesSp.bodyExtraLarge.copyWith(
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppThemeSpacing.s25.h),
          Text(
            value,
            style: context.typographiesSp.headingLarge.copyWith(
              color: color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
