part of '../reset_password.dart';

class ResetPasswordFeatureSection extends StatelessWidget {
  const ResetPasswordFeatureSection({
    super.key,
    required this.pinController,
    required this.newPasswordController,
    required this.confirmPasswordController,
  });

  final TextEditingController pinController;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 208.w, height: 80.h, child: AppLogoWidget()),
        SizedBox(height: AppThemeSpacing.s25.h),
        ResetPasswordInfoWidget(),
        SizedBox(height: AppThemeSpacing.s25.h),
        ScreenTitlesWidget(text: context.text.forgot_password_title),
        SizedBox(height: AppThemeSpacing.s30.h),
        PinProgressField(controller: pinController),
        SizedBox(height: AppThemeSpacing.s25.h),
        ResetPasswordForm(
          newPasswordController: newPasswordController,
          confirmPasswordController: confirmPasswordController,
        ),
      ],
    );
  }
}
