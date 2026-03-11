part of '../usefulinfos.dart';

class UsefulInfoFeatureSection extends StatelessWidget {
  const UsefulInfoFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppHeaderTitle(
            title: AppTranslations.get('faydalı_bilgiler_header_text')),
        AppHero(),
        InfoText(),
      ],
    );
  }
}
