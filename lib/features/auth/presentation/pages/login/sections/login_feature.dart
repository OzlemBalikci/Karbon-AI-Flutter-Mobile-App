part of '../login.dart';

class LoginFeatureSection extends StatelessWidget {
  const LoginFeatureSection({
    super.key,
    required this.formController,
  });

  final LoginFormController formController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 208.w, height: 80.h, child: AppLogoWidget()),
        SizedBox(height: AppThemeSpacing.s25.h),
        const LoginInfoWidget(),
        SizedBox(height: AppThemeSpacing.s25.h),
        LoginFormWidget(formController: formController),
      ],
    );
  }
}
