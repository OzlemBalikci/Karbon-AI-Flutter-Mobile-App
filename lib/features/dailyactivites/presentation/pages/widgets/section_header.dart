part of '../dailyactivities.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.type,
  });

  final String title;
  final QuestionCardType type;
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
        if (type == QuestionCardType.today)
          Text(
            '16 saat kaldı',
            style: context.typographiesSp.bodySmall
                .withColor(context.colors.primary),
          ),
      ],
    );
  }
}
