part of '../profile.dart';

class TreeDonationInfoCard extends StatelessWidget {
  const TreeDonationInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final baseStyle = context.typographiesSp.bodyExtraSmall;
    final color = context.colors.textOnQuestion;

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.loadStatus != ProfileLoadStatus.success ||
            state.profile == null) {
          return const SizedBox.shrink();
        }
        final trees = NumberFormat.decimalPattern('tr')
            .format(state.profile!.availableTreeCount);
        final data = context.text.profile_star_text(trees);

        return Html(
          data: data,
          style: {
            'body': Style(
              fontStyle: FontStyle.italic,
              margin: Margins.zero,
              padding: HtmlPaddings.zero,
              textAlign: TextAlign.center,
              fontSize: FontSize(baseStyle.fontSize ?? 12),
              fontFamily: baseStyle.fontFamily,
              color: context.colors.textOnQuestion,
            ),
            'strong': Style(
              fontWeight: FontWeight.bold,
            ),
          },
        );
      },
    );
  }
}
