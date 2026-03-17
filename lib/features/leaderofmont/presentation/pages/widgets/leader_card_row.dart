import 'package:flutter/material.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/leaderofmont/presentation/pages/widgets/leader_card_widget.dart';
import 'package:karbon/features/leaderofmont/presentation/models/leader_card_variant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_selector.dart';
import 'package:karbon/core/constants/extensions.dart';

class LeaderCardRow extends StatelessWidget {
  const LeaderCardRow({
    super.key,
    required this.variant,
    this.seeOtherCard,
  });

  final LeaderCardVariant variant;
  final Widget? seeOtherCard;

  @override
  Widget build(BuildContext context) {
    return LeaderRankSelector(
      builder: (leaders) {
        final minRequired = variant == LeaderCardVariant.expanded ? 3 : 2;
        if (leaders.length < minRequired) {
          return SizedBox(
            height: 119.h,
            child: Center(
              child: leaders.isEmpty
                  ? CircularProgressIndicator(color: context.colors.primary)
                  : null,
            ),
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: LeaderCardWidget(
                entity: leaders[0],
                variant: variant,
                rankBgColor: leaders[0].rank.leaderRankColors.$1,
                rankTextColor: leaders[0].rank.leaderRankColors.$2,
              ),
            ),
            SizedBox(width: AppThemeSpacing.s20.w),
            Expanded(
              child: LeaderCardWidget(
                entity: leaders[1],
                variant: variant,
                rankBgColor: leaders[1].rank.leaderRankColors.$1,
                rankTextColor: leaders[1].rank.leaderRankColors.$2,
              ),
            ),
            SizedBox(width: AppThemeSpacing.s20.w),
            if (variant == LeaderCardVariant.compact &&
                variant.showSeeOtherCard &&
                seeOtherCard != null) ...[
              Expanded(
                child: seeOtherCard!,
              ),
            ],
            if (variant == LeaderCardVariant.expanded) ...[
              Expanded(
                child: LeaderCardWidget(
                  entity: leaders[2],
                  variant: LeaderCardVariant.expanded,
                  rankBgColor: leaders[2].rank.leaderRankColors.$1,
                  rankTextColor: leaders[2].rank.leaderRankColors.$2,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
