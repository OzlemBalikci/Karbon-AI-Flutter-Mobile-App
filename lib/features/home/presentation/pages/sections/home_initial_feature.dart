part of '../home.dart';

class HomeFirstOpenFeatureSection extends StatelessWidget {
  const HomeFirstOpenFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppHeaderTitle(title: context.text.home_page_header_text),
          AppHero(),
          HomeFirstOpenText(),
          HomeInitialBottomButton(),
          SizedBox(height: AppThemeSpacing.s30.h),
        ],
      ),
    );
  }
}
