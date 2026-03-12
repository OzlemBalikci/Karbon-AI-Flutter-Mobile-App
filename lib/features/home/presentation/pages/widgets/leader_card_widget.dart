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
      height: 119.h,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000).withValues(alpha: 0.15),
            offset: Offset(0, 4),
            spreadRadius: 0,
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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    entity.fullName,
                    style: context.typographiesSp.bodySmall.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF959595),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    entity.valueDisplay,
                    style: context.typographiesSp.bodySmall.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0B7942),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
