part of '../../../profile.dart';

class ProfileTreeFeatureSection extends StatelessWidget {
  const ProfileTreeFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ProfileAsyncStatusSelector<DonationHistoryEntity>(
        statusSelector: (s) => s.donationHistoryStatus,
        errorSelector: (s) => s.donationHistoryError,
        dataSelector: (s) => s.donationHistory,
        onLoading: () => const Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: CircularProgressIndicator(),
          ),
        ),
        onInitial: () => const Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: CircularProgressIndicator(),
          ),
        ),
        onError: (error) => Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
            child: Text(
              error,
              textAlign: TextAlign.center,
              style: context.typographiesSp.bodySmall
                  .copyWith(color: context.colors.error),
            ),
          ),
        ),
        onSuccess: (history) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PointScoreOrTreeDonationInfoCard(
                      title: context.text.profile_tree_card_header_text,
                      color: const Color(0xFF0B7942),
                      value: history.totalDonatedTreeCount.toString(),
                    ),
                    SizedBox(height: AppThemeSpacing.s20.h),
                    Text(
                      context.text.profile_tree_last_donations,
                      style: context.typographiesSp.bodyMediumSmall
                          .copyWith(color: context.colors.textBlack),
                    ),
                    SizedBox(height: AppThemeSpacing.s20.h),
                    if (history.donations.isEmpty)
                      SizedBox(height: AppThemeSpacing.s20.h),
                  ],
                ),
              ),
              if (history.donations.isNotEmpty)
                Expanded(
                  child: DonationHistoryListView(
                    donations: history.donations,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
