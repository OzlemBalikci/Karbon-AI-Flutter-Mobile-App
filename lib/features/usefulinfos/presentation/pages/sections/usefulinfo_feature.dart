part of '../usefulinfos.dart';

class UsefulInfoFeatureSection extends StatelessWidget {
  const UsefulInfoFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppHeaderTitle(title: context.text.useful_infos_header_text),
          AppHero(),
          PageInfoText(text: context.text.lorem_ipsum),
        ],
      ),
    );
  }
}
