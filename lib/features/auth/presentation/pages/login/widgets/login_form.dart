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
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFieldWidget(
                  obscureText: false,
                  hintText:
                      AppTranslations.get('login_tc_or_email_textfield_text'),
                  controller: controller.emailController),
              SizedBox(height: 20.h),
              LoginObscurePasswordSelector(
                builder: (obscure, icon) => TextFieldWidget(
                    obscureText: obscure,
                    suffixIcon: icon,
                    onSuffixIconTap: () => context
                        .read<LoginBloc>()
                        .add(LoginEvent.togglePasswordVisibility()),
                    hintText:
                        AppTranslations.get('login_password_textfield_text'),
                    controller: controller.passwordController),
              ),
              SizedBox(height: 30.h),
              LoginForgotPasswordWidget(),
              SizedBox(height: 30.h),
              PrimaryButton(
                text: AppTranslations.get('login_button_title_bizizmir'),
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
