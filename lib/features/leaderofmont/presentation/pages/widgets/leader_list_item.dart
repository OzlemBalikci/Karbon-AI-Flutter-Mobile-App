part of '../leaderofmonth.dart';

class LeaderListItem extends StatelessWidget {
  const LeaderListItem({super.key, required this.entity});
  final LeaderboardLeaderEntity entity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 4),
            blurRadius: 25,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
        child: Row(
          children: [
            Container(
              width: 58.w,
              decoration: BoxDecoration(
                color: context.colors.primary.withValues(alpha: 0.2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppThemeSpacing.r10.r),
                    bottomLeft: Radius.circular(AppThemeSpacing.r10.r)),
              ),
              child: Center(
                child: Text(
                  '#${entity.rank}',
                  style: context.typographiesSp.bodyExtraLarge.copyWith(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppThemeSpacing.s15.w),
                child: Row(
                  children: [
                    Text(
                      entity.fullName,
                      style: context.typographiesSp.bodySmall.copyWith(
                        fontWeight: FontWeight.w500,
                        color: context.colors.hint,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          entity.valueDisplay.split(' ')[0],
                          style:
                              context.typographiesSp.bodyMediumSmall.copyWith(
                            fontWeight: FontWeight.w600,
                            color: context.colors.carbonQuestion,
                          ),
                        ),
                        SizedBox(width: AppThemeSpacing.s10.w),
                        Assets.icons.tree.svg(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeaderList extends StatelessWidget {
  const LeaderList({super.key, required this.leaders});
  final List<LeaderboardLeaderEntity> leaders;

  @override
  Widget build(BuildContext context) {
    if (leaders.isEmpty) return const SizedBox.shrink();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: leaders.length,
          separatorBuilder: (_, __) => SizedBox(height: AppThemeSpacing.s15.h),
          itemBuilder: (context, index) =>
              LeaderListItem(entity: leaders[index]),
        ),
      ],
    );
  }
}
