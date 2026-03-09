part of '../carbon_calculate.dart';

class CarbonCalculateFirstOpenInfo extends StatelessWidget {
  const CarbonCalculateFirstOpenInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 325.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(AppTranslations.get('karbon_ayak_izi_hesapla_title'),
                style: context.typographiesSp.bodyLarge
                    .copyWith(color: context.colors.carbonQuestion),
                textAlign: TextAlign.center),
            SizedBox(height: 30.h),
            Text(
              AppTranslations.get('karbon_ayak_izi_hesapla_info_text'),
              style: context.typographiesSp.bodySmall
                  .copyWith(color: context.colors.textOnQuestion),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.h),
            Text(
              AppTranslations.get('karbon_ayak_izi_hesapla_idiom'),
              style: context.typographiesSp.bodySmall
                  .copyWith(color: context.colors.carbonQuestion),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
