part of '../leaderofmonth.dart';

// leaderofmonth_feature_section.dart
class LeaderofmonthFeatureSection extends StatelessWidget {
  const LeaderofmonthFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LeaderRankSelector(
            builder: (leaders) => LeaderboardContent(leaders: leaders),
          ),
          SizedBox(height: AppThemeSpacing.s10.h),
          CurrentUserRankSelector(
            builder: (rank) {
              if (rank == null) return const SizedBox.shrink();
              return LeaderboardUserStatus(entity: rank);
            },
          ),
        ],
      ),
    );
  }
}
