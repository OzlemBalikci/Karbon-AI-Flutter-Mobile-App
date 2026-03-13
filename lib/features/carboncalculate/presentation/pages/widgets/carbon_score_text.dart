part of '../carbon_calculate.dart';

class CarbonScoreText extends StatelessWidget {
  const CarbonScoreText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.text.carbon_score_text_title,
            style: context.typographiesSp.bodyLarge.copyWith(
              color: context.colors.carbonQuestion,
            ),
          ),
          SizedBox(height: AppThemeSpacing.s25.h),
          Text(
            context.text.carbon_score_text_description,
            style: context.typographiesSp.bodySmall.copyWith(
              color: context.colors.hint,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
