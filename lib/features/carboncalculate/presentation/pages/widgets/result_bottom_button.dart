part of '../carbon_calculate.dart';

class CarbonCalculateResultBottomButton extends StatelessWidget {
  const CarbonCalculateResultBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryButton(
            text: AppTranslations.get(
                'karbon_ayak_izi_hesapla_calculate_again_button_title'),
            onPressed: () => context.read<CarbonCalculateBloc>().add(
                  const CarbonCalculateEvent.calculateAgainPressed(),
                ),
            backgroundColor: context.colors.secondary,
            foregroundColor: context.colors.textOnSecondary,
            borderColor: context.colors.primary,
          ),
          SizedBox(height: 25.h),
          PrimaryButton(
            text: AppTranslations.get(
                'karbon_ayak_izi_hesapla_go_to_home_button_title'),
            backgroundColor: context.colors.primary,
            foregroundColor: context.colors.textOnPrimary,
            borderColor: context.colors.primary,
            onPressed: () {
              context
                  .read<HomeBloc>()
                  .add(const HomeEvent.returnedFromCarbonCalculate());
              context.router.replaceAll([const HomeRoute()]);
            },
          ),
        ],
      ),
    );
  }
}
