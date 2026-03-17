part of '../leaderofmonth.dart';

class LeaderboardUserStatus extends StatelessWidget {
  const LeaderboardUserStatus({super.key, required this.entity});
  final LeaderboardLeaderEntity entity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 93.h,
      decoration: BoxDecoration(
        color: Color(0xFFE1EEE8),
        borderRadius: BorderRadius.all(Radius.circular(AppThemeSpacing.r10.r)),
        border: Border.all(
            color: context.colors.primary,
            width: 1.w,
            strokeAlign: BorderSide.strokeAlignInside),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${entity.valueDisplay} ile ${entity.rank}. sıradasınız.',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s10.w),
              child: Text(
                context.text.leaderofmonth_bottom_footer_text,
                textAlign: TextAlign.center,
                style: context.typographiesSp.bodyExtraSmall
                    .withColor(Color(0xFF369063)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
