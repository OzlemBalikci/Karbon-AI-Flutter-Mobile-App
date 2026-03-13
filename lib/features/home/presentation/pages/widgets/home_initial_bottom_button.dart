part of '../home.dart';

class HomeInitialBottomButton extends StatelessWidget {
  const HomeInitialBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        children: [
          PrimaryButton(
            text: context.text.useful_infos_button_title,
            onPressed: () => context.router.push(const UsefulinfoRoute()),
            backgroundColor: context.colors.secondary,
            foregroundColor: context.colors.textOnSecondary,
            borderColor: context.colors.primary,
          ),
          SizedBox(height: AppThemeSpacing.s30.h),
          PrimaryButton(
            text: context.text.carbon_calculate_button_title,
            onPressed: () => context.router.push(const CarbonCalculateRoute()),
            backgroundColor: context.colors.primary,
            foregroundColor: context.colors.textOnPrimary,
            borderColor: context.colors.primary,
          ),
        ],
      ),
    );
  }
}
