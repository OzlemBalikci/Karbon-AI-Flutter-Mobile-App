part of '../forgot_password.dart';

class ForgotPasswordFeatureSection extends StatelessWidget {
  const ForgotPasswordFeatureSection({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 208.w, height: 80.h, child: AppLogoWidget()),
        SizedBox(height: AppThemeSpacing.s30.h),
        ForgotPasswordInfoWidget(),
        SizedBox(height: AppThemeSpacing.s30.h),
        ForgotPasswordFormWidget(controller: phoneController),
      ],
    );
  }
}
