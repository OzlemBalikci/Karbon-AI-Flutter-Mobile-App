part of '../carbon_calculate.dart';

class CarbonCalculateInfoBottom extends StatelessWidget {
  const CarbonCalculateInfoBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: PrimaryButton(
        text: context.text.carbon_calculate_first_step_button_title,
        onPressed: () => context.read<CarbonCalculateBloc>().add(
              const CarbonCalculateEvent.nextPressed(),
            ),
        backgroundColor: context.colors.primary,
        foregroundColor: context.colors.textOnPrimary,
        borderColor: context.colors.primary,
      ),
    );
  }
}
