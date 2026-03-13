part of '../forgot_password.dart';

class ForgotPasswordBottomSendCodeSection extends StatelessWidget {
  const ForgotPasswordBottomSendCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: PrimaryButton(
              text: context.text.forgot_password_button_title,
              onPressed: () => context.router.push(const ResetPasswordRoute()),
              backgroundColor: context.colors.secondary,
              foregroundColor: context.colors.textOnSecondary,
              borderColor: Colors.white70),
        ),
      ],
    );
  }
}
