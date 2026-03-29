part of '../splash.dart';

class SplashTextWidget extends StatelessWidget {
  const SplashTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.text.splash_info_text,
            style: context.typographiesSp.headingSmall.copyWith(
                color: context.colors.text,
                height: 1.5,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
