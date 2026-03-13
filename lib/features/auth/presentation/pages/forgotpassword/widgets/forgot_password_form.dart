part of '../forgot_password.dart';

class ForgotPasswordFormWidget extends StatelessWidget {
  const ForgotPasswordFormWidget({super.key});

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
                  hintText: context.text.forgot_password_textfield_text,
                  controller: TextEditingController()),
            ],
          ),
        ),
      ],
    );
  }
}
