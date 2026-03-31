part of '../../../profile.dart';

/// Profil yıldız sekmesi: bağış açıklaması (HTML; “Ağaç Bağışla” span ile vurgulu).
class TreeDonationInfoCard extends StatelessWidget {
  const TreeDonationInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.typographiesSp.bodyExtraSmall;
    final onQuestion = context.colors.textOnQuestion;
    final primary = context.colors.primary;

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.loadStatus != ProfileLoadStatus.success ||
            state.profile == null) {
          return const SizedBox.shrink();
        }

        final trees = NumberFormat.decimalPattern('tr').format(
          state.profile!.availableTreeCount,
        );
        final html = context.text.profile_star_text(trees);

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s15.w),
          child: Html(
            data: html,
            style: {
              'body': Style(
                fontStyle: FontStyle.italic,
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
                textAlign: TextAlign.center,
                fontSize: FontSize(baseStyle.fontSize ?? 12),
                fontFamily: baseStyle.fontFamily,
                color: onQuestion,
              ),
              'span': Style(
                color: context.colors.textOnQuestion,
                fontWeight: FontWeight.bold,
              ),
            },
          ),
        );
      },
    );
  }
}
