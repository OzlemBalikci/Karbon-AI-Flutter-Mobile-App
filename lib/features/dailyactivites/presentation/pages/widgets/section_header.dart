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
          DailyActivitiesSelector<int>(
            selector: (s) =>
                s.questions.isNotEmpty ? s.questions.first.remainingSeconds : 0,
            builder: (seconds) {
              if (seconds <= 0) return const SizedBox.shrink();
              final h = seconds ~/ 3600;
              final m = (seconds % 3600) ~/ 60;
              final label = h > 0 ? '$h saat kaldı' : '$m dk kaldı';
              return Text(
                label,
                style: context.typographiesSp.bodySmall
                    .withColor(context.colors.primary),
              );
            },
          ),
      ],
    );
  }
}
