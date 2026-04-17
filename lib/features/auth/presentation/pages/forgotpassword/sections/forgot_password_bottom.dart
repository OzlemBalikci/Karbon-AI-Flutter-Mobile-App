part of '../forgot_password.dart';

class ForgotPasswordBottomSendCodeSection extends StatelessWidget {
  const ForgotPasswordBottomSendCodeSection({
    super.key,
    required this.formController,
  });

  final ForgotPasswordFormController formController;

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
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                context.read<ForgotPasswordCubit>().sendCode(
                      phoneNumber: formController.phoneNumber.text.trim(),
                    );
              },
              backgroundColor: context.colors.secondary,
              foregroundColor: context.colors.textOnSecondary,
              borderColor: Colors.white70),
        ),
      ],
    );
  }
}
