import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_event.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_selector.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_state.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/widgets/button.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/widgets/score_card.dart';
import 'package:karbon/features/calendar/presentation/pages/monthdetail/widgets/daily_report_card.dart';
import 'package:karbon/widgets/app_header_title.dart';

String _formatMonthlyScore(double value) {
  if (value == value.roundToDouble()) {
    return value.round().toString();
  }
  return value.toStringAsFixed(1);
}

class SeeAllSection extends StatefulWidget {
  const SeeAllSection({
    super.key,
    required this.year,
    required this.month,
    required this.period,
  });

  final int year;
  final int month;
  final int period;

  @override
  State<SeeAllSection> createState() => _SeeAllSectionState();
}

class _SeeAllSectionState extends State<SeeAllSection> {
  late final CalendarBloc _bloc;
  late int _period;

  @override
  void initState() {
    super.initState();
    _period = widget.period.clamp(1, 2);
    _bloc = context.read<CalendarBloc>();
    _bloc.add(CalendarEvent.monthDetailPageOpened(
      year: widget.year,
      month: widget.month,
    ));
  }

  void _onPeriodSelected(int p) {
    if (p == _period) return;
    setState(() => _period = p);
  }

  List<DailyMonthlyDayScoreEntity> _filteredSorted(
    List<DailyMonthlyDayScoreEntity> rows,
  ) {
    final filtered = rows.where((row) {
      final d = DateTime.tryParse(row.date);
      if (d == null) return false;
      return (d.day <= 15 ? 1 : 2) == _period;
    });
    return [...filtered]..sort((a, b) {
        final da = DateTime.tryParse(a.date);
        final db = DateTime.tryParse(b.date);
        if (da == null || db == null) return 0;
        return da.compareTo(db);
      });
  }

  @override
  Widget build(BuildContext context) {
    final monthRef = DateTime(widget.year, widget.month);
    final monthTitle = formatMonthYear(monthRef);
    final headerTitle = '$monthTitle Sonuçları';

    return CalendarMonthDetailAsyncSelector(
      builder: (slice) {
        final loading = slice.status == CalendarAsyncStatus.loading;
        final error = slice.error;
        final monthly = slice.data;

        final scoreLabel = loading
            ? '…'
            : error != null
                ? '—'
                : monthly != null
                    ? _formatMonthlyScore(monthly.totalMonthlyScore)
                    : '—';

        final sorted = monthly != null
            ? _filteredSorted(monthly.dailyScores)
            : const <DailyMonthlyDayScoreEntity>[];

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppHeaderTitle(title: headerTitle),
              SizedBox(height: AppThemeSpacing.s20.h),
              ScoreCard(
                bgColor: context.colors.secondary,
                bgImage: Assets.images.calendarMask2.provider(),
                title: monthTitle,
                score: scoreLabel,
                text: 'Karbon Ayak İzi Skorunuz',
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              DayButton(
                monthReference: monthRef,
                period: _period,
                onPeriodSelected: _onPeriodSelected,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              if (loading)
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                )
              else if (error != null)
                Text(
                  error,
                  style: context.typographiesSp.bodySmall
                      .withColor(context.colors.text),
                )
              else if (sorted.isEmpty)
                Text(
                  'Bu dönem için kayıt yok.',
                  style: context.typographiesSp.bodySmall
                      .withColor(context.colors.text),
                )
              else
                ...sorted.map((e) {
                  final d = DateTime.tryParse(e.date);
                  return Padding(
                    padding: EdgeInsets.only(bottom: AppThemeSpacing.s12.h),
                    child: DailyReportCard(
                      date: d ?? DateTime(widget.year, widget.month),
                      score: e.totalScore,
                    ),
                  );
                }),
            ],
          ),
        );
      },
    );
  }
}
