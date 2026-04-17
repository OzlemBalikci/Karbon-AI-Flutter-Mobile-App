part of '../reset_password.dart';

class ResetPasswordBottomSection extends StatelessWidget {
  const ResetPasswordBottomSection({
    super.key,
    required this.phoneNumber,
    required this.formController,
  });
  final String phoneNumber;
  final ResetPasswordFormController formController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
      child: AppButton(
        text: context.text.reset_password_button_title,
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
          context.read<ResetPasswordCubit>().submitReset(
                phoneNumber: phoneNumber,
                resetCode: formController.pin.text.trim(),
                newPassword: formController.newPassword.text,
                confirmNewPassword: formController.confirmPassword.text,
              );
        },
        backgroundColor: context.colors.secondary,
        foregroundColor: context.colors.textOnSecondary,
        borderColor: Colors.white70,
      ),
    );
  }
}
