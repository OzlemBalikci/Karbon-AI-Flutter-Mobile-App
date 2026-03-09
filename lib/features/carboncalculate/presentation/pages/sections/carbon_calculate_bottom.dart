part of '../carbon_calculate.dart';

class CarbonCalculateBottomSection extends StatelessWidget {
  const CarbonCalculateBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CarbonPhaseSelector(
      builder: (phase) => switch (phase) {
        CarbonInfoPhase() => const CarbonCalculateInfoBottom(),
        CarbonQuestionPhase(:final questionIndex) => questionIndex == 0
            ? const CarbonCalculateFirstQuestionBottom()
            : const CarbonCalculateQuestionBottom(),
        CarbonResultPhase() => const CarbonCalculateResultBottomButton(),
      },
    );
  }
}
