part of '../home.dart';

class HomeFirstOpenText extends StatelessWidget {
  const HomeFirstOpenText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            textAlign: TextAlign.center,
            context.text.lorem_ipsum,
            style: context.typographiesSp.bodySmall
                .copyWith(color: context.colors.textBlack)),
      ],
    );
  }
}
