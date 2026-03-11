part of '../home.dart';

class LeaderCardWidget extends StatelessWidget {
  const LeaderCardWidget({
    super.key,
    required this.entity,
    required this.rankBgColor,
    required this.rankTextColor,
  });
  final LeaderboardEntity entity;
  final Color rankBgColor;
  final Color rankTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.w,
      height: 119.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            offset: Offset(0, 4),
            blurRadius: 25,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.r),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 38.h,
                  color: rankBgColor,
                  alignment: Alignment.center,
                  child: Text(
                    '#${entity.rank}',
                    style: context.typographiesSp.headingSmall.copyWith(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      color: rankTextColor,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  entity.fullName,
                  style: context.typographiesSp.bodySmall.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF959595),
                  ),
                ),
                Text(
                  "${entity.treeCount}B Ağaç",
                  style: context.typographiesSp.bodySmall.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0B7942),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
