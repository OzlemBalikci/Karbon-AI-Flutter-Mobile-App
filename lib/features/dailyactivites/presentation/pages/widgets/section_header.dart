part of '../screens/dailyactivities.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.variant,
  });

  final String title;
  final QuestionCardVariant variant;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.typographiesSp.bodyMediumSmall
              .withColor(context.colors.textBlack),
        ),
        if (variant is QuestionCardToday)
          Text(
            '16 saat kaldı',
            style: context.typographiesSp.bodySmall
                .withColor(context.colors.primary),
          ),
      ],
    );
  }
}
