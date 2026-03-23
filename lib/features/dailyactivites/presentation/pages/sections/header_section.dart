part of '../dailyactivities.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppHeaderTitle(
              title: context.text.daily_activities_today_section_header_text),
          SizedBox(height: AppThemeSpacing.s20.h),
          Infocard(
            text: context.text.daily_activities_info_text,
            style: context.typographiesSp.bodyExtraSmall.copyWith(
              color: context.colors.textOnQuestion,
            ),
            bgcolor: context.colors.textOnQuestion.withValues(alpha: 0.2),
          ),
        ],
      ),
    );
  }
}
