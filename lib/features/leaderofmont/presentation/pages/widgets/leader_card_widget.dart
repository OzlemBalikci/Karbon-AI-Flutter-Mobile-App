import 'package:flutter/material.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/presentation/widgetvariant/leader_card_variant.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';

class LeaderCardWidget extends StatelessWidget {
  const LeaderCardWidget({
    super.key,
    this.rankBgColor,
    this.rankTextColor,
    required this.variant,
    required this.entity,
  });

  final Color? rankBgColor;
  final Color? rankTextColor;
  final LeaderCardVariant variant;
  final LeaderboardLeaderEntity entity;

  @override
  Widget build(BuildContext context) {
    final (bg, text) = (
      rankBgColor ?? entity.rank.leaderRankColors.$1,
      rankTextColor ?? entity.rank.leaderRankColors.$2
    );

    return Container(
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
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
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: bg,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s8.h),
                child: Text(
                  '#${entity.rank}',
                  style: context.typographiesSp.headingSmall.copyWith(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: text,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppThemeSpacing.s10.h,
                horizontal: AppThemeSpacing.s12.w,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        entity.fullName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.typographiesSp.bodySmall.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF959595),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: AppThemeSpacing.s6.h),
                  Text(
                    variant == LeaderCardVariant.expanded
                        ? '${entity.valueDisplay.split(' ')[0]} '
                        : entity.valueDisplay,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.typographiesSp.bodySmall.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0B7942),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: AppThemeSpacing.s2.h),
                  if (variant == LeaderCardVariant.expanded)
                    Assets.icons.tree.svg(width: 13.w, height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
