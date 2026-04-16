part of '../forgot_password.dart';

class ForgotPasswordBottomSendCodeSection extends StatelessWidget {
  const ForgotPasswordBottomSendCodeSection({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: AppButton(
              text: context.text.forgot_password_button_title,
              onPressed: () => context.read<ForgotPasswordCubit>().sendCode(
                    phoneNumber: phoneController.text.trim(),
                  ),
              backgroundColor: context.colors.secondary,
              foregroundColor: context.colors.textOnSecondary,
              borderColor: Colors.white70),
        ),
      ],
    );
  }
}
