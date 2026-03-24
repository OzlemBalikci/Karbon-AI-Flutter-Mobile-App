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
              type: QuestionCardType.history),
          SizedBox(height: AppThemeSpacing.s10.h),
          BlocSelector<DailyActivitiesBloc, DailyActivitiesState,
              List<DailyCalendarItemEntity>>(
            selector: (state) => state.historyItems,
            builder: (context, historyItems) {
              if (historyItems.isEmpty) {
                return Text(
                  context.text.daily_activities_empty_hint,
                  style: context.typographiesSp.bodySmall
                      .withColor(context.colors.textBlack),
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: historyItems
                    .map(
                      (item) => Padding(
                        padding: EdgeInsets.only(bottom: AppThemeSpacing.s20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                item.formattedDate,
                                style: context.typographiesSp.bodySmall
                                    .withColor(context.colors.primary)
                                    .copyWith(fontStyle: FontStyle.italic),
                              ),
                            ),
                            ScoreBadge(score: item.score),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
