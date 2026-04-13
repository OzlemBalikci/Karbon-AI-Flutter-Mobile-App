part of '../carbon_calculate.dart';

class CarbonCalculateQuestionContent extends StatelessWidget {
  const CarbonCalculateQuestionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s30.w),
      child: CarbonQuestionContentSelector(
        builder: (questionData) => questionData != null
            ? CarbonCalculateQuestion(
                questionText: questionData.questionText,
                options: questionData.options,
                selectedOptionId: questionData.selectedOptionId,
                onOptionSelected: (val) {
                  if (val == null) return;
                  context.read<CarbonCalculateBloc>().add(
                        CarbonCalculateEvent.answerSelected(
                          questionId: questionData.questionId,
                          optionId: val,
                        ),
                      );
                },
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
