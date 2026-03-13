part of '../splash.dart';

class SplashBottomRegisterSection extends StatelessWidget {
  const SplashBottomRegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryButton(
                text: context.text.login_button_title_bizizmir,
                backgroundColor: context.colors.secondary,
                foregroundColor: context.colors.textOnSecondary,
                borderColor: Colors.white70,
                onPressed: () => context.router.replace(const LoginRoute()),
              ),
              SizedBox(height: AppThemeSpacing.s30.h),
              PrimaryButton(
                text: context.text.register_button_bizizmir,
                backgroundColor: Colors.transparent,
                foregroundColor: context.colors.textOnPrimary,
                borderColor: Colors.white70,
                onPressed: () => context.router.replace(const RegisterRoute()),
              ),
              SizedBox(height: AppThemeSpacing.s36.h),
            ],
          ),
        )
      ],
    );
  }
}
