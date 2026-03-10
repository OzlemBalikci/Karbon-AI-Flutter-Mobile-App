part of '../home.dart';

class StatsCardRow extends StatelessWidget {
  const StatsCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatsCards(
            title: AppTranslations.get('home_page_stats_card_1_title'),
            value: "670.000",
            image: Assets.images.homeStatsCard1,
            borderColor: context.colors.primary,
          ),
          StatsCards(
            title: AppTranslations.get('home_page_stats_card_2_title'),
            value: "67.000",
            borderColor: context.colors.secondary,
          ),
        ],
      ),
    );
  }
}
