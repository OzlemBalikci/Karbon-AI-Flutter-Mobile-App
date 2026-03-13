part of '../login.dart';

class LoginBottomRegisterSection extends StatelessWidget {
  const LoginBottomRegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
      child: PrimaryButton(
        text: context.text.register_button_bizizmir,
        onPressed: () => context.router.replace(const RegisterRoute()),
        backgroundColor: context.colors.primary,
        foregroundColor: context.colors.textOnPrimary,
        borderColor: Colors.white70,
      ),
    );
  }
}
