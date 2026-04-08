part of '../../../profile.dart';

class DonatedTreeCard extends StatelessWidget {
  const DonatedTreeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.profileTreeMask.provider(),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 4),
            blurRadius: 25,
            spreadRadius: 0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s15.w, vertical: AppThemeSpacing.s20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '20 Aralık 2023',
                  style: context.typographiesSp.bodyMediumSmall.copyWith(
                      color: Color(0xFF0B7942), fontStyle: FontStyle.italic),
                ),
                Text(
                  context.text.profile_tree_donated_tree_text,
                  style: context.typographiesSp.bodyMediumSmall.copyWith(
                      color: Color(0xFF0B7942), fontStyle: FontStyle.italic),
                ),
              ],
            ),
            Container(
              width: 80.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
              ),
              child: Center(
                child: Text(
                  '10',
                  style: context.typographiesSp.headingLarge
                      .copyWith(color: context.colors.textOnPrimary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
