part of '../dailyactivities.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        children: [
          SectionHeader(
              title: context.text.daily_activities_history_section_header_text,
              variant: QuestionCardHistory(text: '', score: 0)),
          SizedBox(height: AppThemeSpacing.s10.h),
          DailyActivitiesHistorySelector(
            builder: (context, data) {
              if (data.solvedQuestions.isEmpty) {
                return Text(
                  context.text.daily_activities_empty_hint,
                  style: context.typographiesSp.bodySmall
                      .withColor(context.colors.textBlack),
                );
              }
              return Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: data.solvedQuestions.length,
                  separatorBuilder: (_, __) => SizedBox(height: 30.h),
                  itemBuilder: (context, index) {
                    final q = data.solvedQuestions[index];
                    final solvedAt = data.questionSolvedAt[q.id];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (solvedAt != null)
                          Text(
                            DateFormat.yMMMMd('tr').format(solvedAt),
                            style: context.typographiesSp.bodySmall
                                .withColor(context.colors.primary)
                                .copyWith(fontStyle: FontStyle.italic),
                          ),
                        SizedBox(height: AppThemeSpacing.s10.h),
                        QuestionCard(
                          variant: QuestionCardHistory(
                            text: q.text, // ← gerçek soru metni
                            score: 0, // ← lastSubmitResult.score veya varsa
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
