part of '../home.dart';

class SeeOtherLeaderCard extends StatelessWidget {
  const SeeOtherLeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(10.r),
        color: context.colors.primary,
        strokeWidth: 2.w,
        dashPattern: const [6, 6],
      ),
      child: Container(
        width: 95.w,
        height: 119.h,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.images.homeSeeOther.path,
                width: 14.w, height: 14.5.h),
            Text(
              AppTranslations.get('home_page_see_others_text'),
              style: context.typographiesSp.bodyMediumSmall.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colors.primary,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
