part of '../carbon_calculate.dart';

class CarbonCalculateProgressIndicator extends StatelessWidget {
  final int? current;
  final int? max;

  const CarbonCalculateProgressIndicator({
    super.key,
    required this.current,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    final target = (current != null && max != null && max! > 0)
        ? (current! / max!).clamp(0.0, 1.0).toDouble()
        : 0.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.r),
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: target),
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeOutCubic,
          builder: (context, animatedValue, _) => LinearProgressIndicator(
            value: animatedValue,
            borderRadius: BorderRadius.circular(5.r),
            backgroundColor: context.colors.primary.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation<Color>(context.colors.primary),
            minHeight: 10.h,
          ),
        ),
      ),
    );
  }
}
