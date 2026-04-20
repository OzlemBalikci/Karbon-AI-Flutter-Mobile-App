part of '../../../profile.dart';

class DonateHistorySuccessBody extends StatelessWidget {
  const DonateHistorySuccessBody({super.key, required this.history});

  final DonationHistoryEntity history;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Colors.white, Colors.transparent],
        stops: [0.0, 0.80, 1.0],
      ).createShader(bounds),
      blendMode: BlendMode.dstIn,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
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
              DonationHistoryListView(
                donations: history.donations,
              ),
          ],
        ),
      ),
    );
  }
}
