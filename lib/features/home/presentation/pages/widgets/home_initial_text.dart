part of '../home.dart';

class HomeFirstOpenText extends StatelessWidget {
  const HomeFirstOpenText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        children: [
          Text(
              textAlign: TextAlign.center,
              context.text.lorem_ipsum,
              style: context.typographies.bodySmall
                  .copyWith(color: context.colors.textBlack)),
        ],
      ),
    );
  }
}
