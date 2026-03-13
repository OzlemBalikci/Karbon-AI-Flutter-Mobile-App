part of '../carbon_calculate.dart';

class CarbonCalculateInfo extends StatelessWidget {
  const CarbonCalculateInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CarbonCalculateIsCurrentQuestionAnsweredSelector(
      builder: (isAnswered) {
        if (!isAnswered) return const SizedBox.shrink();
        return CarbonInfoTextSelector(
          builder: (infoText) => Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
            child: Infocard(
              text: infoText,
              style: context.typographiesSp.bodyExtraSmall
                  .copyWith(color: context.colors.textOnQuestion),
              bgcolor: context.colors.textOnQuestion.withValues(alpha: 0.2),
            ),
          ),
        );
      },
    );
  }
}
