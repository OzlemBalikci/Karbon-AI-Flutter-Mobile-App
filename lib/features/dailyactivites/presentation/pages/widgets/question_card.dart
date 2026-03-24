part of '../dailyactivities.dart';

enum QuestionCardType {
  today,
  history,
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.questionId,
    this.type = QuestionCardType.today,
    this.onTap,
  });

  final String questionId;
  final QuestionCardType type;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DailyActivitiesQuestionRowSelector(
      questionId: questionId,
      builder: (context, data) {
        final (text, entity) = data;
        final card = Container(
          width: double.infinity,
          height: 65.h,
          decoration: BoxDecoration(
            color: context.colors.secondary,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
            boxShadow: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 25,
                offset: Offset(0, 15),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 218,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: context.typographiesSp.bodySmall
                            .withColor(context.colors.textOnQuestion),
                      ),
                    ],
                  ),
                ),
                if (type == QuestionCardType.today)
                  Icon(
                    Icons.arrow_forward_ios,
                    size: AppThemeSpacing.s12.w,
                  ),
                if (type == QuestionCardType.history)
                  BlocSelector<DailyActivitiesBloc, DailyActivitiesState,
                      double?>(
                    selector: (state) => state.lastSubmitResult?.score,
                    builder: (context, lastScore) {
                      if (lastScore == null) return const SizedBox.shrink();
                      return ScoreBadge(score: lastScore);
                    },
                  ),
              ],
            ),
          ),
        );
        if (type == QuestionCardType.history) {
          return card;
        } else {
          return GestureDetector(
            onTap: onTap ??
                () => context.read<DailyActivitiesBloc>().add(
                      DailyActivitiesEvent.questionSelected(entity),
                    ),
            child: card,
          );
        }
      },
    );
  }
}
