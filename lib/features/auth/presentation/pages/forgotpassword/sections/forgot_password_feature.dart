part of '../forgot_password.dart';

class ForgotPasswordFeatureSection extends StatelessWidget {
  const ForgotPasswordFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 208.w, height: 80.h, child: AppLogoWidget()),
        SizedBox(height: 30.h),
        ForgotPasswordInfoWidget(),
        SizedBox(height: 30.h),
        ForgotPasswordFormWidget(),
      ],
    );
  }
}
