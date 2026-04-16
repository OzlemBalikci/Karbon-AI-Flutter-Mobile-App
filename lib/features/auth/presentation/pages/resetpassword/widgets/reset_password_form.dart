part of '../reset_password.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
    required this.newPasswordController,
    required this.confirmPasswordController,
  });

  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFieldWidget(
                obscureText: false,
                suffixIcon: Assets.icons.eyeSlashOpened.svg(),
                hintText: context.text.reset_password_textfield_text,
                controller: newPasswordController,
              ),
              SizedBox(height: AppThemeSpacing.s25.h),
              TextFieldWidget(
                obscureText: false,
                suffixIcon: Assets.icons.eyeSlashOpened.svg(),
                hintText:
                    context.text.reset_password_confirm_password_textfield_text,
                controller: confirmPasswordController,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
