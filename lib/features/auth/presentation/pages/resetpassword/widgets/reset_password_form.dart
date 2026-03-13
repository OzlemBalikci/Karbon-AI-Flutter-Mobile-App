part of '../reset_password.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

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
                  controller: TextEditingController()),
              SizedBox(height: AppThemeSpacing.s25.h),
              TextFieldWidget(
                obscureText: false,
                suffixIcon: Assets.icons.eyeSlashOpened.svg(),
                hintText:
                    context.text.reset_password_confirm_password_textfield_text,
                controller: TextEditingController(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
