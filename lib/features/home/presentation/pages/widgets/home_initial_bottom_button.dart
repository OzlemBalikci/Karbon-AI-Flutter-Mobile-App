part of '../home.dart';

class HomeInitialBottomButton extends StatelessWidget {
  const HomeInitialBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w24),
      child: Column(
        children: [
          PrimaryButton(
            text: AppTranslations.get('faydalı_bilgiler_button_title'),
            onPressed: () => context.router.push(const UsefulinfoRoute()),
            backgroundColor: context.colors.secondary,
            foregroundColor: context.colors.textOnSecondary,
            borderColor: context.colors.primary,
          ),
          SizedBox(height: 30.h),
          PrimaryButton(
            text: AppTranslations.get('karbon_ayak_izi_hesapla_button_title'),
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
