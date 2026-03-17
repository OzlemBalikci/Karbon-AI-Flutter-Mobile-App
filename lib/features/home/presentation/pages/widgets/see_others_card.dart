part of '../home.dart';

class SeeOtherLeaderCard extends StatelessWidget {
  const SeeOtherLeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(AppThemeSpacing.r15.r),
        color: context.colors.primary,
        strokeWidth: AppThemeSpacing.s2.w,
        dashPattern: const [6, 6],
      ),
      child: GestureDetector(
        onTap: () => context.router.push(const LeaderofmonthRoute()),
        child: Container(
          height: 117.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.homeSeeOther.path,
                  width: 36.w, height: 36.h, fit: BoxFit.cover),
              SizedBox(height: AppThemeSpacing.s4.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s4.w),
                child: Text(
                  context.text.home_page_see_others_text,
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
