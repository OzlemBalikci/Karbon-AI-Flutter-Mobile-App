part of '../leaderofmonth.dart';

class LeaderofmonthFeatureSection extends StatelessWidget {
  const LeaderofmonthFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LeaderofmonthBloc, LeaderofmonthState>(
      listenWhen: (previous, current) =>
          previous.status != current.status &&
          current.status == LeaderofmonthStatus.failure &&
          current.error != null,
      listener: (context, state) {
        showAppErrorDialog(
          context,
          message: state.error!,
          onDismissed: () => context.read<LeaderofmonthBloc>().add(
                const LeaderofmonthEvent.fetchRequested(),
              ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
        child: LeaderofmonthStatusSelector(
          (status) => switch (status) {
            LeaderofmonthStatus.initial => Center(
                child:
                    CircularProgressIndicator(color: context.colors.primary)),
            LeaderofmonthStatus.loading => Center(
                child:
                    CircularProgressIndicator(color: context.colors.primary)),
            LeaderofmonthStatus.failure => LeaderofmonthErrorSelector(
                builder: (_) => const SizedBox.shrink(),
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
      ),
    );
  }
}
