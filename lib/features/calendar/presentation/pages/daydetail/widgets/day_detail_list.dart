part of '../daydetail.dart';

class DayDetailHistorySection extends StatelessWidget {
  const DayDetailHistorySection({
    super.key,
    required this.activities,
  });

  final List<DailyDayActivityEntity> activities;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: activities.length,
          separatorBuilder: (_, __) => SizedBox(height: 30.h),
          itemBuilder: (context, index) {
            final a = activities[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _DayDetailHistoryCard(
                  questionId: a.activityQuestionId,
                  questionText: a.questionText,
                  answerText: a.selectedOptionText,
                  score: a.score,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _DayDetailHistoryCard extends StatelessWidget {
  const _DayDetailHistoryCard({
    required this.questionId,
    required this.questionText,
    required this.answerText,
    required this.score,
  });

  final String? questionId;
  final String questionText;
  final String answerText;
  final double score;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(CalendarSelectedQuestionDetailRoute(
          questionId: questionId ?? '',
          questionText: questionText,
          answerText: answerText,
          score: score,
        ));
      },
      child: Container(
        width: double.infinity,
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
          padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s15.w,
            vertical: AppThemeSpacing.s14.h,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        questionText,
                        style: context.typographiesSp.bodySmall.withColor(
                          context.colors.textOnQuestion.withValues(alpha: 0.6),
                        ),
                      ),
                    ]),
              ),
              SizedBox(width: AppThemeSpacing.s8.w),
              ScoreBadge(score: score),
            ],
          ),
        ),
      ),
    );
  }
}
