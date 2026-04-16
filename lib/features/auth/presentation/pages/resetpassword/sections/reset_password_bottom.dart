part of '../reset_password.dart';

class ResetPasswordBottomSection extends StatelessWidget {
  const ResetPasswordBottomSection({
    super.key,
    required this.phoneNumber,
    required this.pinController,
    required this.newPasswordController,
    required this.confirmPasswordController,
  });

  final String phoneNumber;
  final TextEditingController pinController;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
      child: AppButton(
        text: context.text.reset_password_button_title,
        onPressed: () =>
            context.read<ResetPasswordCubit>().submitReset(
                  phoneNumber: phoneNumber,
                  resetCode: pinController.text.trim(),
                  newPassword: newPasswordController.text,
                  confirmNewPassword: confirmPasswordController.text,
                ),
        backgroundColor: context.colors.secondary,
        foregroundColor: context.colors.textOnSecondary,
        borderColor: Colors.white70,
      ),
    );
  }
}
