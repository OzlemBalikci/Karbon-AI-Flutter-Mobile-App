part of '../carbon_calculate.dart';

class CarbonCalculateQuestionBottom extends StatelessWidget {
  const CarbonCalculateQuestionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SecondaryButton(
              text: AppTranslations.get(
                  'karbon_ayak_izi_hesapla_question_back_button_title'),
              onPressed: () => context.read<CarbonCalculateBloc>().add(
                    const CarbonCalculateEvent.backPressed(),
                  ),
              backgroundColor: context.colors.secondary,
              foregroundColor: context.colors.textOnSecondary,
              borderColor: context.colors.primary,
            ),
          ),
          SizedBox(width: 15.w),
          CarbonCalculateIsCurrentQuestionAnsweredSelector(
            builder: (isAnswered) => CarbonCalculateIsLastQuestionStepSelector(
              builder: (isLastQuestion) => Expanded(
                child: SecondaryButton(
                  text: AppTranslations.get(isLastQuestion
                      ? 'karbon_ayak_izi_hesapla_last_question_button_title'
                      : 'karbon_ayak_izi_hesapla_question_next_button_title'),
                  onPressed: isAnswered
                      ? () => context.read<CarbonCalculateBloc>().add(
                            isLastQuestion
                                ? const CarbonCalculateEvent.finishPressed()
                                : const CarbonCalculateEvent.nextPressed(),
                          )
                      : null,
                  backgroundColor: isAnswered
                      ? context.colors.primary
                      : context.colors.primary.withValues(alpha: 0.7),
                  foregroundColor: isAnswered
                      ? context.colors.textOnPrimary
                      : context.colors.textOnPrimary.withValues(alpha: 0.7),
                  borderColor: isAnswered
                      ? context.colors.primary
                      : context.colors.primary.withValues(alpha: 0.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
