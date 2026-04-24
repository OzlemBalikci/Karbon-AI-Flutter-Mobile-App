part of '../login.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required this.formController,
  });

  final LoginFormController formController;

  @override
  Widget build(BuildContext context) {
    final c = formController;
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
                controller: c.emailOrTc,
                focusNode: c.emailOrTcFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) => c.passwordFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              LoginObscurePasswordSelector(
                builder: (obscure, icon) => TextFieldWidget(
                  obscureText: obscure,
                  suffixIcon: GestureDetector(
                    onTap: () =>
                        context.read<LoginCubit>().togglePasswordVisibility(),
                    child: icon,
                  ),
                  hintText: context.text.login_password_textfield_text,
                  controller: c.password,
                  focusNode: c.passwordFocus,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (_) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                ),
              ),
              SizedBox(height: AppThemeSpacing.s30.h),
              const LoginForgotPasswordWidget(),
              SizedBox(height: AppThemeSpacing.s30.h),
              AppButton(
                text: context.text.login_button_title_bizizmir,
                onPressed: () {
                  // FocusManager.instance.primaryFocus?.unfocus();
                  // context.read<LoginCubit>().login(
                  //       emailOrIdentityNumber: c.emailOrTc.text,
                  //       password: c.password.text,
                  //     );
                  context.router.replaceAll([const HomeRoute()]);
                },
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
