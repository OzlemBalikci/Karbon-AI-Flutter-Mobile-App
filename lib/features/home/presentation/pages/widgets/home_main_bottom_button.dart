part of '../home.dart';

class HomeMainBottomButton extends StatelessWidget {
  const HomeMainBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 61.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
            ),
            child: OutlinedButton(
              onPressed: () => context.router.push(const UsefulinfoRoute()),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colors.secondary,
                foregroundColor: context.colors.textOnSecondary,
                side: BorderSide(color: context.colors.primary, width: 2),
              ),
              child: Text(
                  context.text.useful_infos_button_title,
                  textAlign: TextAlign.center,
                  style: context.typographiesSp.bodyMedium),
            ),
          ),
        ),
        SizedBox(width: AppThemeSpacing.s20.w),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 61.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
            ),
            child: OutlinedButton(
              onPressed: () =>
                  context.router.push(const CarbonCalculateRoute()),
              style: ElevatedButton.styleFrom(
                backgroundColor: context.colors.primary,
                foregroundColor: context.colors.textOnPrimary,
                side: BorderSide(color: context.colors.primary, width: 2),
              ),
              child: Text(
                  context.text.carbon_calculate_button_title,
                  textAlign: TextAlign.center,
                  style: context.typographiesSp.bodyMedium),
            ),
          ),
        ),
      ],
    );
  }
}
