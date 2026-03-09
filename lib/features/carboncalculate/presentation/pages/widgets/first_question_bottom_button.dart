part of '../carbon_calculate.dart';

class CarbonCalculateFirstQuestionBottom extends StatelessWidget {
  const CarbonCalculateFirstQuestionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: CarbonCalculateIsCurrentQuestionAnsweredSelector(
        builder: (isAnswered) => PrimaryButton(
          text: AppTranslations.get(
              'karbon_ayak_izi_hesapla_first_question_button_title'),
          onPressed: isAnswered
              ? () => context.read<CarbonCalculateBloc>().add(
                    const CarbonCalculateEvent.nextPressed(),
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
    );
  }
}
