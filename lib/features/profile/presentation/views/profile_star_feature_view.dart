part of '../profile.dart';

class ProfileStarFeatureView extends StatelessWidget {
  const ProfileStarFeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        PointScoreOrTreeDonationInfoCard(
            title: context.text.profile_star_text(
                context.text.profile_star_donate_button_text),
            color: Color(0xFFEA8778),
            value: '1200'),
        TreeDonationInfoCard(),
        DonateTreeButton(),
      ],
    );
  }
}
