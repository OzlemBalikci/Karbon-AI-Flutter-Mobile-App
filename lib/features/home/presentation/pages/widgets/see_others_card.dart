part of '../home.dart';

class SeeOtherLeaderCard extends StatelessWidget {
  const SeeOtherLeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(15.r),
        color: context.colors.primary,
        strokeWidth: 2.w,
        dashPattern: const [6, 6],
      ),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 117.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.homeSeeOther.path,
                  width: 36.w, height: 36.h, fit: BoxFit.cover),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Text(
                  AppTranslations.get('home_page_see_others_text'),
                  style: context.typographiesSp.bodyMediumSmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
