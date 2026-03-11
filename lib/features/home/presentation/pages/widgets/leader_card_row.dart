part of '../home.dart';

class LeaderCardRow extends StatelessWidget {
  const LeaderCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LeaderRankSelector(
      builder: (leaders) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeaderCardWidget(
              entity: leaders[0],
              rankBgColor: Color(0xFFFFD700),
              rankTextColor: Color(0xFFBA9D00)),
          LeaderCardWidget(
              entity: leaders[1],
              rankBgColor: Color(0xFFC0C0C0),
              rankTextColor: Color(0xFF959595)),
          SeeOtherLeaderCard(),
        ],
      ),
    );
  }
}
