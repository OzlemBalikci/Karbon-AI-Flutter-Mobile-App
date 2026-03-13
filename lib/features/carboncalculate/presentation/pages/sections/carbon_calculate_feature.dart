part of '../carbon_calculate.dart';

class CarbonCalculateFeatureSection extends StatelessWidget {
  const CarbonCalculateFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CarbonPhaseSelector(
        builder: (phase) => switch (phase) {
              CarbonInfoPhase() => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppHeaderTitle(
                      title: context.text.carbon_calculate_header_text,
                    ),
                    SizedBox(height: AppThemeSpacing.s30.h),
                    CarbonCalculateHero(),
                    SizedBox(height: AppThemeSpacing.s30.h),
                    CarbonCalculateFirstOpenInfo(),
                  ],
                ),
              CarbonQuestionPhase(:final questionIndex) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppHeaderTitle(
                          title: context.text.carbon_calculate_header_text,
                        ),
                        SizedBox(height: AppThemeSpacing.s40.h),
                        CarbonProgressSelector(
                          builder: (progress) =>
                              CarbonCalculateProgressIndicator(
                            current: progress.current,
                            max: progress.max,
                          ),
                        ),
                        SizedBox(height: AppThemeSpacing.s22.h),
                        CarbonCalculateQuestionContent(
                          key: ValueKey('q-$questionIndex'),
                        ),
                      ],
                    ),
                    CarbonCalculateInfo(),
                  ],
                ),
              CarbonResultPhase() => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppHeaderTitle(
                      title: context.text.carbon_calculate_result_header_text,
                    ),
                    SizedBox(height: AppThemeSpacing.s40.h),
                    CarbonScoreBoard(),
                    SizedBox(height: AppThemeSpacing.s30.h),
                    CarbonScoreText(),
                  ],
                ),
            });
  }
}
