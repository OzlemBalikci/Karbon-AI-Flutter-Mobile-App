part of '../home.dart';

class HomeFirstOpenFeatureSection extends StatelessWidget {
  const HomeFirstOpenFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppHeaderTitle(title: AppTranslations.get('home_page_header_text')),
        SizedBox(height: 25.h),
        AppHero(),
        SizedBox(height: 20.h),
        HomeText(),
        SizedBox(height: 50.h),
        HomeFirstOpenBottomButton(),
      ],
    );
  }
}
