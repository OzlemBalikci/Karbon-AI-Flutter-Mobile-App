part of '../carbon_calculate.dart';

class CarbonCalculateHero extends StatelessWidget {
  const CarbonCalculateHero({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Assets.images.karbonHesapla.image(
        width: 325.w,
        height: 147.h,
      ),
    );
  }
}
