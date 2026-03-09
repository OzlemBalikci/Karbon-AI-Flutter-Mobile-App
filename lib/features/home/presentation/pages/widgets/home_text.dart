part of '../home.dart';

class HomeText extends StatelessWidget {
  const HomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w25),
      child: Column(
        children: [
          Text(
              textAlign: TextAlign.center,
              AppTranslations.get('lorem_ipsum'),
              style: context.typographies.bodySmall
                  .copyWith(color: context.colors.textBlack)),
        ],
      ),
    );
  }
}
