part of '../home.dart';

class StatsCardRow extends StatelessWidget {
  const StatsCardRow({super.key});

  static String _fmtCount(int? n) => n != null ? formatTurkishDecimal(n) : '—';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (prev, curr) =>
          prev.globalTarget != curr.globalTarget ||
          prev.monthlyTarget != curr.monthlyTarget,
      builder: (context, state) {
        final g = state.globalTarget;
        final m = state.monthlyTarget;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: StatsCards(
                title: context.text.home_page_stats_card_1_title,
                value: _fmtCount(g?.targetTreeCount),
                image: Assets.images.homeStatsCard1,
                borderColor: context.colors.primary,
                hasShadow: false,
                remainingTreeCount: g?.remainingTreeCount,
                targetTreeCount: g?.targetTreeCount,
                progressPercent: g?.progressPercent,
              ),
            ),
            SizedBox(width: AppThemeSpacing.s20.w),
            Expanded(
              child: StatsCards(
                title: context.text.home_page_stats_card_2_title,
                value: _fmtCount(m?.targetTreeCount),
                image: Assets.images.homeStatsCard2,
                borderColor: Colors.transparent,
                hasShadow: true,
                remainingTreeCount: m?.remainingTreeCount,
                targetTreeCount: m?.targetTreeCount,
                progressPercent: m?.progressPercent,
              ),
            ),
          ],
        );
      },
    );
  }
}
