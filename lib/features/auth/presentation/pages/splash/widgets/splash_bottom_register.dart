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
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryButton(
                text: AppTranslations.get('login_button_title_bizizmir'),
                backgroundColor: context.colors.secondary,
                foregroundColor: context.colors.textOnSecondary,
                borderColor: Colors.white70,
                onPressed: () => context.router.replace(const LoginRoute()),
              ),
              SizedBox(height: 30.h),
              PrimaryButton(
                text: AppTranslations.get('register_button_bizizmir'),
                backgroundColor: Colors.transparent,
                foregroundColor: context.colors.textOnPrimary,
                borderColor: Colors.white70,
                onPressed: () => context.router.replace(const RegisterRoute()),
              ),
              SizedBox(height: 36.h),
            ],
          ),
        )
      ],
    );
  }
}
