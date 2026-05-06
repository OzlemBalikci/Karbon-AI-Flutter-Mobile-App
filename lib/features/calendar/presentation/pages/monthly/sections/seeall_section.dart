import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/usecases/get_monthly_activities_usecase.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/widgets/button.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/widgets/score_card.dart';
import 'package:karbon/features/calendar/presentation/pages/monthly/widgets/daily_report_card.dart';
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
  late int _period;
  DailyMonthlyActivitiesEntity? _data;
  bool _loading = true;
  String? _error;

  final GetMonthlyActivitiesUsecase _getMonthly =
      getIt<GetMonthlyActivitiesUsecase>();

  @override
  void initState() {
    super.initState();
    _period = widget.period.clamp(1, 2);
    _fetch();
  }

  Future<void> _fetch() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    final result = await _getMonthly(
      year: widget.year,
      month: widget.month,
      period: _period,
    );
    if (!mounted) return;
    result.fold(
      (e) => setState(() {
        _data = null;
        _error = e.message;
        _loading = false;
      }),
      (m) => setState(() {
        _data = m;
        _error = null;
        _loading = false;
      }),
    );
  }

  void _onPeriodSelected(int p) {
    if (p == _period) return;
    setState(() => _period = p);
    _fetch();
  }

  @override
  Widget build(BuildContext context) {
    final monthRef = DateTime(widget.year, widget.month);
    final monthTitle = formatMonthYear(monthRef);
    final headerTitle = '$monthTitle Sonuçları';

    final monthly = _data;
    final scoreLabel = _loading
        ? '…'
        : _error != null
            ? '—'
            : monthly != null
                ? _formatMonthlyScore(monthly.totalMonthlyScore)
                : '—';

    final rows = _data?.dailyScores ?? const <DailyMonthlyDayScoreEntity>[];
    final filteredRows = rows.where((row) {
      final d = DateTime.tryParse(row.date);
      if (d == null) return false;
      final rowPeriod = d.day <= 15 ? 1 : 2;
      return rowPeriod == _period;
    });
    final sorted = [...filteredRows]..sort((a, b) {
        final da = DateTime.tryParse(a.date);
        final db = DateTime.tryParse(b.date);
        if (da == null || db == null) return 0;
        return da.compareTo(db);
      });

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppHeaderTitle(
            title: headerTitle,
          ),
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
          if (_loading)
            const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (_error != null)
            Text(
              _error!,
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
  }
}
