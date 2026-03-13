part of '../home.dart';

class HomeFirstOpenFeatureSection extends StatelessWidget {
  const HomeFirstOpenFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppHeaderTitle(
            title: context.text.home_page_header_text),
        SizedBox(height: AppThemeSpacing.s25.h),
        AppHero(),
        SizedBox(height: AppThemeSpacing.s20.h),
        HomeFirstOpenText(),
        SizedBox(height: 50.h),
        HomeInitialBottomButton(),
      ],
    );
  }
}
