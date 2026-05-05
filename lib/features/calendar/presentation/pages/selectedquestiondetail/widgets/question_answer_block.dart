part of '../selectedquestiondetail.dart';

class QuestionAnswerBlock extends StatelessWidget {
  const QuestionAnswerBlock({
    super.key,
    required this.questionLabel,
    required this.answerText,
    required this.questionLabelColor,
    required this.answerBg,
    required this.answerBorder,
    required this.answerTextColor,
  });

  final String questionLabel;
  final String answerText;
  final Color questionLabelColor;
  final Color answerBg;
  final Color answerBorder;
  final Color answerTextColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questionLabel,
          style: context.typographiesSp.bodySmall.withColor(questionLabelColor),
        ),
        SizedBox(height: AppThemeSpacing.s8.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s16.w,
            vertical: AppThemeSpacing.s14.h,
          ),
          decoration: BoxDecoration(
            color: answerBg,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r12.r),
            border: Border.all(color: answerBorder, width: 1),
          ),
          child: Text(
            answerText,
            style: context.typographiesSp.bodyMedium.withColor(answerTextColor),
          ),
        ),
      ],
    );
  }
}
