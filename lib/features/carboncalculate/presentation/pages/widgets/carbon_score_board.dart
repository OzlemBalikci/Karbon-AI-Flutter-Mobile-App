part of '../carbon_calculate.dart';

class CarbonScoreBoard extends StatelessWidget {
  const CarbonScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: context.colors.primary, width: 1.w),
          ),
          width: double.infinity,
          height: 106.h,
          child: Stack(children: [
            Positioned.fill(
              top: 0,
              left: 0,
              right: 0,
              child: Assets.images.carbonMask.image(
                width: double.infinity.w,
                height: 106.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppTranslations.get('karbon_score_board_title'),
                        style: context.typographiesSp.bodyLarge.copyWith(
                          color: const Color(0xFF0B7942),
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '100',
                        style: context.typographiesSp.headingLarge.copyWith(
                          color: const Color(0xFF0B7942),
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
