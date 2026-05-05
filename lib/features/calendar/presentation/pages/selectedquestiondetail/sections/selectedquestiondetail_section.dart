part of '../selectedquestiondetail.dart';

class SelectedQuestionDetailSection extends StatelessWidget {
  const SelectedQuestionDetailSection({
    super.key,
    required this.questionText,
    required this.answerText,
    required this.questionDetail,
    required this.loading,
    required this.error,
  });

  final String questionText;
  final String answerText;
  final ActivityQuestionDetailEntity? questionDetail;
  final bool loading;
  final String? error;

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
        if (loading)
          const Center(child: CircularProgressIndicator())
        else if (error != null)
          Text(
            error!,
            style: context.typographiesSp.bodySmall
                .withColor(context.colors.textOnQuestion),
          )
        else if (questionDetail != null) ...[
          Text(
            'Seçenekler',
            style: context.typographiesSp.bodySmall.withColor(
              context.colors.textOnQuestion.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: AppThemeSpacing.s8.h),
          ...questionDetail!.options.map(
            (option) => Padding(
              padding: EdgeInsets.only(bottom: AppThemeSpacing.s8.h),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppThemeSpacing.s12.w,
                  vertical: AppThemeSpacing.s10.h,
                ),
                decoration: BoxDecoration(
                  color: context.colors.secondary,
                  borderRadius: BorderRadius.circular(AppThemeSpacing.r12.r),
                  border: Border.all(
                    color: context.colors.text.withValues(alpha: 0.08),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        option.text,
                        style: context.typographiesSp.bodySmall
                            .withColor(context.colors.textOnQuestion),
                      ),
                    ),
                    Text(
                      option.carbonValue.toString(),
                      style: context.typographiesSp.bodySmall
                          .withColor(context.colors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
