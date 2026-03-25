part of '../dailyactivities.dart';

class TodaySection extends StatelessWidget {
  const TodaySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHeader(
            title: context.text.daily_activities_today_section_header_text,
            variant: QuestionCardToday(questionId: ''),
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          Expanded(
            child: DailyActivitiesQuestionsSelector(
              builder: (context, questions) {
                if (questions.isEmpty) {
                  return Text(context.text.daily_activities_empty_hint,
                      style: context.typographiesSp.bodySmall
                          .withColor(context.colors.textBlack));
                }
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: questions.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: AppThemeSpacing.s20.h),
                    child: QuestionCard(
                      variant:
                          QuestionCardToday(questionId: questions[index].id),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
