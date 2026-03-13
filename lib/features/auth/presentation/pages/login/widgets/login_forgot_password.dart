part of '../login.dart';

class LoginForgotPasswordWidget extends StatelessWidget {
  const LoginForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => context.router.push(const ForgotPasswordRoute()),
          child: Text(
            context.text.login_forgot_password_text,
            style: context.typographiesSp.bodySmall.copyWith(
              color: context.colors.textOnPrimary,
              decoration: TextDecoration.underline,
              decorationColor: context.colors.textOnPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
