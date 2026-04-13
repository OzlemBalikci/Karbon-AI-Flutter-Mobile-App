part of '../home.dart';

String _formatTreeInt(int n) {
  final s = n.abs().toString();
  final buf = StringBuffer();
  final len = s.length;
  for (var i = 0; i < len; i++) {
    if (i > 0 && (len - i) % 3 == 0) buf.write('.');
    buf.write(s[i]);
  }
  return buf.toString();
}

class StatsCardRow extends StatelessWidget {
  const StatsCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState,
        (GlobalTargetEntity?, MonthlyTargetEntity?)>(
      selector: (s) => (s.globalTarget, s.monthlyTarget),
      builder: (context, targets) {
        final g = targets.$1;
        final m = targets.$2;
        final globalValue = g != null ? _formatTreeInt(g.targetTreeCount) : '—';
        final monthlyValue =
            m != null ? _formatTreeInt(m.targetTreeCount) : '—';
        final globalFooter = g != null
            ? '${_formatTreeInt(g.remainingTreeCount)} ağaç kaldı.'
            : null;
        final monthlyFooter = m != null
            ? '${_formatTreeInt(m.remainingTreeCount)} ağaç kaldı.'
            : null;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: StatsCards(
                title: context.text.home_page_stats_card_1_title,
                value: globalValue,
                image: Assets.images.homeStatsCard1,
                borderColor: context.colors.primary,
                hasShadow: false,
                remainingFooter: globalFooter,
              ),
            ),
            SizedBox(width: AppThemeSpacing.s20.w),
            Expanded(
              child: StatsCards(
                title: context.text.home_page_stats_card_2_title,
                value: monthlyValue,
                image: Assets.images.homeStatsCard2,
                borderColor: Colors.transparent,
                hasShadow: true,
                remainingFooter: monthlyFooter,
              ),
            ),
          ],
        );
      },
    );
  }
}
