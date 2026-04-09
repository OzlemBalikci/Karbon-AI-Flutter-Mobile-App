part of '../../../profile.dart';

class ProfileStarFeatureSection extends StatelessWidget {
  const ProfileStarFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        buildWhen: (p, c) =>
            p.profile != c.profile ||
            p.profileStatus != c.profileStatus ||
            p.donateStatus != c.donateStatus,
        builder: (context, state) => _ProfileStarBody(state: state),
      ),
    );
  }
}

class _ProfileStarBody extends StatelessWidget {
  const _ProfileStarBody({required this.state});

  final ProfileState state;

  @override
  Widget build(BuildContext context) {
    final pointsValue =
        '${NumberFormat.decimalPattern('tr_TR').format(state.profile?.totalPoints ?? 0)} ${context.text.points}';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PointScoreOrTreeDonationInfoCard(
          title: context.text.profile_star_total_point_text,
          color: const Color(0xFFEA8778),
          value: pointsValue,
        ),
        SizedBox(height: AppThemeSpacing.s30.h),
        _InfoSection(state: state),
      ],
    );
  }
}

class _InfoSection extends StatelessWidget {
  const _InfoSection({required this.state});

  final ProfileState state;

  @override
  Widget build(BuildContext context) {
    if (state.profileStatus == AsyncStatus.error) {
      return Text(
        state.profileError ?? '',
        textAlign: TextAlign.center,
        style: context.typographiesSp.bodySmall
            .copyWith(color: context.colors.error),
      );
    }

    if (state.profileStatus != AsyncStatus.success || state.profile == null) {
      return SizedBox(
        height: 120.h,
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    final html = state.canDonate
        ? context.text.profile_star_text(
            state.profile!.availableTreeCount.toString(),
          )
        : context.text.profile_star_no_trees_hint;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TreeDonationInfo(html: html),
        if (state.canDonate) ...[
          SizedBox(height: AppThemeSpacing.s30.h),
          DonateTreeButton(
            isLoading: state.donateStatus == AsyncStatus.loading,
            availableTreeCount: state.profile!.availableTreeCount,
            onDonate: () => context.read<ProfileBloc>().add(
                  ProfileEvent.donateTrees(state.profile!.availableTreeCount),
                ),
          ),
        ],
      ],
    );
  }
}
