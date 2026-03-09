part of '../register.dart';

class RegisterFeatureSection extends StatelessWidget {
  const RegisterFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 208.w, height: 80.h, child: AppLogoWidget()),
        SizedBox(height: 25.h),
        RegisterInfoWidget(),
        SizedBox(height: 25.h),
        RegisterFormWidget(),
        SizedBox(height: 25.h),
        RegisterKvkkWidget(),
      ],
    );
  }
}
