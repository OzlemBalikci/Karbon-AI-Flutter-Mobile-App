part of '../login.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key, required this.controller});
  final LoginController controller;
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
                  hintText: context.text.login_tc_or_email_textfield_text,
                  controller: controller.emailController),
              SizedBox(height: AppThemeSpacing.s20.h),
              LoginObscurePasswordSelector(
                builder: (obscure, icon) => TextFieldWidget(
                    obscureText: obscure,
                    suffixIcon: GestureDetector(
                      onTap: () => context
                          .read<LoginBloc>()
                          .add(LoginEvent.togglePasswordVisibility()),
                      child: icon,
                    ),
                    hintText: context.text.login_password_textfield_text,
                    controller: controller.passwordController),
              ),
              SizedBox(height: AppThemeSpacing.s30.h),
              LoginForgotPasswordWidget(),
              SizedBox(height: AppThemeSpacing.s30.h),
              PrimaryButton(
                text: context.text.login_button_title_bizizmir,
                onPressed: () => controller.onLoginPressed(context),
                backgroundColor: context.colors.secondary,
                foregroundColor: context.colors.textOnSecondary,
                borderColor: Colors.white70,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
