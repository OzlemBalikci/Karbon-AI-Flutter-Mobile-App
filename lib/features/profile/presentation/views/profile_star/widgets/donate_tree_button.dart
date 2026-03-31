part of '../../../profile.dart';

class DonateTreeButton extends StatelessWidget {
  const DonateTreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.donateButtonMask.provider(),
          colorFilter:
              ColorFilter.mode(context.colors.primary, BlendMode.multiply),
          fit: BoxFit.cover,
        ),
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: OutlinedButton(
        onPressed: () =>
            showProfilePopup(context, ProfilePopupKind.donateSuccess),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.text.profile_star_donate_button_text,
                style: context.typographiesSp.bodyMedium.copyWith(
                  color: context.colors.textOnPrimary,
                ),
              ),
              Text(
                '1200 + ağaç',
                style: context.typographiesSp.bodyMedium.copyWith(
                  color: context.colors.textOnPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
