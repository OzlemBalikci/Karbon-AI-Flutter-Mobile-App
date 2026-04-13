part of '../carbon_calculate.dart';

class CarbonCalculateQuestionBottom extends StatelessWidget {
  const CarbonCalculateQuestionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: AppButton(
              text: context.text.carbon_calculate_question_back_button_title,
              onPressed: () => context.read<CarbonCalculateBloc>().add(
                    const CarbonCalculateEvent.backPressed(),
                  ),
              backgroundColor: context.colors.secondary,
              foregroundColor: context.colors.textOnSecondary,
              borderColor: context.colors.primary,
            ),
          ),
          SizedBox(width: AppThemeSpacing.s15.w),
          CarbonCalculateIsCurrentQuestionAnsweredSelector(
            builder: (isAnswered) => CarbonCalculateIsLastQuestionStepSelector(
              builder: (isLastQuestion) => Expanded(
                child: AppButton(
                  text: isLastQuestion
                      ? context.text.carbon_calculate_last_question_button_title
                      : context
                          .text.carbon_calculate_question_next_button_title,
                  onPressed: isAnswered
                      ? () => context.read<CarbonCalculateBloc>().add(
                            isLastQuestion
                                ? const CarbonCalculateEvent
                                    .submitAnswersRequested()
                                : const CarbonCalculateEvent.nextPressed(),
                          )
                      : null,
                  backgroundColor: isAnswered
                      ? context.colors.primary
                      : context.colors.buttonDisabled,
                  foregroundColor: context.colors.textOnPrimary,
                  borderColor: isAnswered
                      ? context.colors.primary
                      : context.colors.buttonDisabled,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
