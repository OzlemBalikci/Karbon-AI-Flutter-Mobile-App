part of '../home.dart';

class StatsCardRow extends StatelessWidget {
  const StatsCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: StatsCards(
            title: AppTranslations.get('home_page_stats_card_1_title'),
            value: "670.000",
            image: Assets.images.homeStatsCard1,
            borderColor: context.colors.primary,
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: StatsCards(
            title: AppTranslations.get('home_page_stats_card_2_title'),
            value: "67.000",
            image: Assets.images.homeStatsCard2,
            borderColor: context.colors.secondary,
            hasBlur: true,
          ),
        ),
      ],
    );
  }
}
