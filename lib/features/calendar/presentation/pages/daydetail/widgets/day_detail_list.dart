import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/widgets/score_badge.dart';

/// [HistorySection] ile aynı üst başlık ve kart düzeni; veri [DailyDayActivityEntity] listesinden gelir.
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.text.daily_activities_history_section_header_text,
              style: context.typographiesSp.bodyMediumSmall
                  .withColor(context.colors.textBlack),
            ),
          ],
        ),
        SizedBox(height: AppThemeSpacing.s10.h),
        if (activities.isEmpty)
          Text(
            context.text.daily_activities_empty_hint,
            style: context.typographiesSp.bodySmall
                .withColor(context.colors.textBlack),
          )
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: activities.length,
            separatorBuilder: (_, __) => SizedBox(height: 30.h),
            itemBuilder: (context, index) {
              final a = activities[index];
              final parsed = DateTime.tryParse(a.activityDate);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (parsed != null)
                    Text(
                      DateFormat.yMMMMd('tr').format(parsed.toLocal()),
                      style: context.typographiesSp.bodySmall
                          .withColor(context.colors.primary)
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                  SizedBox(height: AppThemeSpacing.s10.h),
                  _DayDetailHistoryCard(
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

/// `QuestionCard` + `_CardShell` (history) ile hizalı kart.
class _DayDetailHistoryCard extends StatelessWidget {
  const _DayDetailHistoryCard({
    required this.questionText,
    required this.answerText,
    required this.score,
  });

  final String questionText;
  final String answerText;
  final double score;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  if (answerText.isNotEmpty) ...[
                    SizedBox(height: AppThemeSpacing.s6.h),
                    Text(
                      answerText,
                      style: context.typographiesSp.bodySmall.withColor(
                        context.colors.textOnQuestion.withValues(alpha: 0.85),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            SizedBox(width: AppThemeSpacing.s8.w),
            ScoreBadge(score: score),
          ],
        ),
      ),
    );
  }
}
