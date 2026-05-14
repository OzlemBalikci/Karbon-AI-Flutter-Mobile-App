part of '../screens/dailyactivities.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHeader(
            title: context.text.daily_activities_history_section_header_text,
            variant: const QuestionCardHistory(text: '', score: 0),
          ),
          SizedBox(height: AppThemeSpacing.s10.h),
          DailyActivitiesPreviousAnswersSelector(
            builder: (groups) => Builder(
              builder: (context) {
                if (groups.isEmpty) {
                  return Text(
                    context.text.daily_activities_empty_hint,
                    style: context.typographiesSp.bodySmall
                        .withColor(context.colors.textBlack),
                  );
                }
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: groups.length,
                  itemBuilder: (context, gi) {
                    final group = groups[gi];
                    final groupDate =
                        DateTime.tryParse(group.date) ?? DateTime.now();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          formatFullDate(groupDate),
                          style: context.typographiesSp.bodySmall
                              .withColor(context.colors.primary)
                              .copyWith(fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: AppThemeSpacing.s10.h),
                        ...group.answers.map(
                          (a) => Padding(
                            padding:
                                EdgeInsets.only(bottom: AppThemeSpacing.s15.h),
                            child: QuestionCard(
                              variant: QuestionCardHistory(
                                text: a.questionText,
                                score: a.score,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: AppThemeSpacing.s20.h),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
