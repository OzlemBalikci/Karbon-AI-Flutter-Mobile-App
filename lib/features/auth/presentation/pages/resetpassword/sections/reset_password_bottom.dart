part of '../reset_password.dart';

class ResetPasswordBottomSection extends StatelessWidget {
  const ResetPasswordBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
      child: AppButton(
        text: context.text.reset_password_button_title,
        onPressed: () => context.router.push(const LoginRoute()),
        backgroundColor: context.colors.secondary,
        foregroundColor: context.colors.textOnSecondary,
        borderColor: Colors.white70,
      ),
    );
  }
}
