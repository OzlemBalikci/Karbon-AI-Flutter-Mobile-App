part of '../leaderofmonth.dart';

// leader_list_item.dart veya leaderboard_content.dart
class LeaderboardContent extends StatelessWidget {
  const LeaderboardContent({super.key, required this.leaders});
  final List<LeaderboardLeaderEntity> leaders;

  @override
  Widget build(BuildContext context) {
    final rest =
        leaders.length > 3 ? leaders.sublist(3) : <LeaderboardLeaderEntity>[];
    final hasPodium = leaders.length >= 3;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LeaderCardRow(
          leaders: leaders,
          variant: hasPodium
              ? LeaderCardVariant.expanded
              : LeaderCardVariant.compact,
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        if (rest.isNotEmpty) LeaderList(leaders: rest),
      ],
    );
  }
}
