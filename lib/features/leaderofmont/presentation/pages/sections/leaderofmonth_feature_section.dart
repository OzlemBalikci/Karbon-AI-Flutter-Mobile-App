part of '../leaderofmonth.dart';

class LeaderofmonthFeatureSection extends StatelessWidget {
  const LeaderofmonthFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: LeaderofmonthStatusSelector(
        onInitial: () => SizedBox(
          height: 120.h,
          child: Center(
            child: CircularProgressIndicator(color: context.colors.primary),
          ),
        ),
        onLoading: () => SizedBox(
          height: 200.h,
          child: Center(
            child: CircularProgressIndicator(color: context.colors.primary),
          ),
        ),
        onError: (error) => Padding(
          padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s24.h),
          child: Center(
            child: Text(
              error,
              textAlign: TextAlign.center,
              style: context.typographiesSp.bodyMedium,
            ),
          ),
        ),
        onSuccess: () => Column(
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
      ),
    );
  }
}
