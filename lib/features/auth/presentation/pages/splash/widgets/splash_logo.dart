part of '../splash.dart';

class SplashLogoSection extends StatelessWidget {
  const SplashLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 208.w,
      height: 155.h,
      child: Image(
        image: Assets.images.appLogoFront.provider(),
        fit: BoxFit.contain,
      ),
    );
  }
}
