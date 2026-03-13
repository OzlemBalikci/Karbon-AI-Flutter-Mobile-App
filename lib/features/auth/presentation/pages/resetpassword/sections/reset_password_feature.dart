part of '../reset_password.dart';

class ResetPasswordFeatureSection extends StatelessWidget {
  const ResetPasswordFeatureSection({super.key, required this.pinController});

  final TextEditingController pinController;

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
        ScreenTitlesWidget(text: 'forgot_password_title'),
        SizedBox(height: AppThemeSpacing.s30.h),
        PinProgressField(controller: pinController),
        SizedBox(height: AppThemeSpacing.s25.h),
        ResetPasswordForm(),
      ],
    );
  }
}
