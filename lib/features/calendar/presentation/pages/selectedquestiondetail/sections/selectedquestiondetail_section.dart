part of '../selectedquestiondetail.dart';

class SelectedQuestionDetailSection extends StatelessWidget {
  const SelectedQuestionDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeaderTitle(title: context.text.selected_question_header_text),
        SizedBox(height: AppThemeSpacing.s20.h),
        Infocard(
          text: context.text.selected_question_info_banner_text,
          bgcolor: context.colors.primary.withValues(alpha: 0.2),
          style: context.typographiesSp.bodyExtraSmall
              .copyWith(color: context.colors.primary)
              .copyWith(fontStyle: FontStyle.italic),
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
      ],
    );
  }
}
