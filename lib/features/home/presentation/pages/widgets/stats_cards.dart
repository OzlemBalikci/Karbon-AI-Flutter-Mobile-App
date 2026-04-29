part of '../home.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    required this.borderColor,
    this.hasShadow = false,
    this.onTap,
    this.remainingTreeCount,
    this.targetTreeCount,
    this.progressPercent,
  });

  final String title;
  final String value;
  final AssetGenImage image;
  final Color borderColor;
  final VoidCallback? onTap;
  final bool hasShadow;
  final int? remainingTreeCount;
  final int? targetTreeCount;
  final double? progressPercent;

  Color _resolveRowColor() {
    if (progressPercent == null || targetTreeCount == null) {
      return const Color(0xFFF1FBF6); // varsayılan açık yeşil
    }

    if (remainingTreeCount == 0) {
      // Hedefe ulaşıldı → koyu yeşil
      return const Color(0xFFA9C5B8);
    }

    final double progress = progressPercent!.clamp(0.0, 100.0) / 100.0;

    // 0% → açık/nötr, 100% → koyu yeşil
    return Color.lerp(
      const Color(0xFFF1FBF6), // başlangıç: çok açık yeşil
      const Color(0xFF4CAF82), // bitiş: orta-koyu yeşil
      progress,
    )!;
  }

  Color _resolveTextColor() {
    final double progress = (progressPercent ?? 0).clamp(0.0, 100.0) / 100.0;
    // %50'nin üzerinde arka plan koyulaşınca yazıyı beyaza çek
    return progress > 0.5 ? Colors.white : const Color(0xFF2E7D5A);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 142.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
            boxShadow: hasShadow
                ? [
                    BoxShadow(
                      color: Color(0x26000000),
                      offset: Offset(0, 4),
                      blurRadius: 25,
                      spreadRadius: 0,
                    ),
                  ]
                : null,
            color: context.colors.secondary,
            border: Border.all(color: borderColor, width: 1.w),
            image: DecorationImage(
              image: image.provider(),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
            child: Padding(
              padding: EdgeInsets.only(top: AppThemeSpacing.s10.h),
              child: _buildContent(context),
            ),
          ),
        ),
        Positioned(
          bottom: -16.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s10.w),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: double.infinity,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(AppThemeSpacing.r10.r)),
                border: Border.all(color: Color(0xFFA9C5B8), width: 1.w),
                color: _resolveRowColor(),
              ),
              child: Center(
                child: Text(
                  remainingTreeCount != null
                      ? '${formatTurkishDecimal(remainingTreeCount!)} ağaç kaldı'
                      : context.text.home_stats_succeed_text,
                  style: context.typographiesSp.bodyExtraSmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.colors.carbonQuestion,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppThemeSpacing.s10.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s10.w),
            child: Text(
              title,
              style: context.typographiesSp.bodyMediumSmall.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colors.carbonQuestion,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppThemeSpacing.s10.h),
          Text(
            value,
            style: TextStyle(
              fontSize: AppThemeSpacing.s30.sp,
              fontWeight: FontWeight.w700,
              color: context.colors.carbonQuestion,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
