part of '../leaderofmonth.dart';

class LeaderofmonthFeatureSection extends StatelessWidget {
  const LeaderofmonthFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: LeaderofmonthStatusSelector(
        (status) => switch (status) {
          LeaderofmonthStatus.initial => const SizedBox.shrink(),
          LeaderofmonthStatus.loading => const SizedBox.shrink(),
          LeaderofmonthStatus.failure => Builder(
              builder: (context) {
                final message = context.select(
                  (LeaderofmonthBloc b) => b.state.error,
                );
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: AppThemeSpacing.s24.h),
                  child: Center(
                    child: Text(
                      message ?? '',
                      textAlign: TextAlign.center,
                      style: context.typographiesSp.bodyMedium,
                    ),
                  ),
                );
              },
            ),
          LeaderofmonthStatus.success => Column(
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
        },
      ),
    );
  }
}
