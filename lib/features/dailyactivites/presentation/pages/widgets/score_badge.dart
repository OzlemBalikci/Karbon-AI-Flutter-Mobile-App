part of '../screens/dailyactivities.dart';

class ScoreBadge extends StatelessWidget {
  const ScoreBadge({super.key, required this.score});
  final double score;

  static String _label(double p) {
    if (p > 0) {
      final v =
          p == p.roundToDouble() ? p.toInt().toString() : p.toStringAsFixed(1);
      return '+$v';
    }
    if (p < 0) {
      final a = p.abs();
      final v =
          a == a.roundToDouble() ? a.toInt().toString() : a.toStringAsFixed(1);
      return '-$v';
    }
    return '0';
  }

  @override
  Widget build(BuildContext context) {
    final bg = score > 0
        ? context.colors.success
        : score < 0
            ? context.colors.error
            : context.colors.hint;
    return Container(
      constraints: BoxConstraints(minWidth: 60.w, minHeight: 34.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
      ),
      alignment: Alignment.center,
      child: Text(
        _label(score),
        style:
            context.typographiesSp.bodyExtraLarge.copyWith(color: Colors.white),
      ),
    );
  }
}
