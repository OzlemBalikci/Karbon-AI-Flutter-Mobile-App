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
                        title: AppTranslations.get(
                            'karbon_ayak_izi_hesapla_header_text')),
                    SizedBox(height: 30.h),
                    CarbonCalculateHero(),
                    SizedBox(height: 30.h),
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
                            title: AppTranslations.get(
                                'karbon_ayak_izi_hesapla_header_text')),
                        SizedBox(height: 40.h),
                        CarbonProgressSelector(
                          builder: (progress) =>
                              CarbonCalculateProgressIndicator(
                            current: progress.current,
                            max: progress.max,
                          ),
                        ),
                        SizedBox(height: 22.h),
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
                        title: AppTranslations.get(
                            'karbon_ayak_izi_hesapla_result_header_text')),
                    SizedBox(height: 40.h),
                    CarbonScoreBoard(),
                    SizedBox(height: 30.h),
                    CarbonScoreText(),
                  ],
                ),
            });
  }
}
