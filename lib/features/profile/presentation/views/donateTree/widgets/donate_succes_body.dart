part of '../../../profile.dart';

class ProfileStarSuccessBody extends StatelessWidget {
  const ProfileStarSuccessBody({super.key, required this.profile});

  final UserProfileEntity profile;

  @override
  Widget build(BuildContext context) {
    final pointsValue =
        '${formatTurkishDecimal(profile.totalPoints)} ${context.text.points}';

    final html = profile.availableTreeCount > 0
        ? context.text.profile_star_text(
            profile.availableTreeCount.toString(),
          )
        : context.text.profile_star_no_trees_hint;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PointScoreOrTreeDonationInfoCard(
          title: context.text.profile_star_total_point_text,
          color: const Color(0xFFEA8778),
          value: pointsValue,
        ),
        SizedBox(height: AppThemeSpacing.s30.h),
        TreeDonationInfo(html: html),
        if (profile.availableTreeCount > 0) ...[
          SizedBox(height: AppThemeSpacing.s30.h),
          ProfileDonateAsyncSelector(
            builder: (donateSlice) {
              return DonateTreeButton(
                isLoading: donateSlice.status == AsyncStatus.loading,
                availableTreeCount: profile.availableTreeCount,
                onDonate: () => context.read<ProfileBloc>().add(
                      ProfileEvent.donateTrees(profile.availableTreeCount),
                    ),
              );
            },
          ),
        ],
      ],
    );
  }
}
