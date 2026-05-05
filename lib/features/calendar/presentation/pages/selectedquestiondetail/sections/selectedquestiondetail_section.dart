part of '../selectedquestiondetail.dart';

class SelectedQuestionDetailSection extends StatelessWidget {
  const SelectedQuestionDetailSection({
    super.key,
    required this.questionText,
    required this.answerText,
  });

  final String questionText;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppHeaderTitle(
          title: context.text.selected_question_header_text,
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        InfoBanner(),
        SizedBox(height: AppThemeSpacing.s24.h),
        QuestionAnswerBlock(
          questionLabel: questionText,
          answerText: answerText.isEmpty ? '—' : answerText,
          questionLabelColor:
              context.colors.textOnQuestion.withValues(alpha: 0.6),
          answerBg: context.colors.primary.withValues(alpha: 0.2),
          answerBorder: context.colors.primary.withValues(alpha: 0.8),
          answerTextColor: context.colors.primary,
        ),
        SizedBox(height: AppThemeSpacing.s16.h),
      ],
    );
  }
}
