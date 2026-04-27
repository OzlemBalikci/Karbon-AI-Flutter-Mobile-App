part of '../register.dart';

class RegisterFeatureSection extends StatelessWidget {
  const RegisterFeatureSection({
    super.key,
    required this.formController,
  });

  final RegisterFormController formController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: AppThemeSpacing.s20.h),
        SizedBox(width: 208.w, height: 80.h, child: AppLogoWidget()),
        SizedBox(height: AppThemeSpacing.s25.h),
        RegisterInfoWidget(),
        SizedBox(height: AppThemeSpacing.s25.h),
        RegisterFormWidget(formController: formController),
        SizedBox(height: AppThemeSpacing.s25.h),
        RegisterKvkkWidget(),
      ],
    );
  }
}
