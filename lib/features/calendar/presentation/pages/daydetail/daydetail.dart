import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:karbon/router/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/usecases/get_details_usecase.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/widgets/score_card.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/widgets/score_badge.dart';

part 'sections/daydetail_header_section.dart';
part 'sections/daydetail_list_section.dart';
part 'widgets/day_detail_list.dart';

String _formatDayDetailScore(double value) {
  if (value == value.roundToDouble()) {
    return value.round().toString();
  }
  return value.toStringAsFixed(1);
}

@RoutePage()
class DayDetailPage extends StatefulWidget {
  const DayDetailPage({
    super.key,
    required this.date,
  });

  /// `yyyy-MM-dd`
  final String date;

  @override
  State<DayDetailPage> createState() => _DayDetailPageState();
}

class _DayDetailPageState extends State<DayDetailPage> {
  final GetDetailsUsecase _getDetails = getIt<GetDetailsUsecase>();

  DailyDayDetailEntity? _detail;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final result = await _getDetails(date: widget.date);
    if (!mounted) return;
    result.fold(
      (_) => setState(() => _detail = null),
      (d) => setState(() => _detail = d),
    );
  }

  /// [DailyReportCard] içindeki `dayLabel` ile aynı format.
  String get _dayLabel {
    final d = DateTime.tryParse(widget.date) ??
        DateTime.tryParse('${widget.date}T00:00:00') ??
        DateTime.now();
    return formatFullDate(d);
  }

  String get _dayScoreLabel {
    final d = _detail;
    if (d == null) return '—';
    return _formatDayDetailScore(d.totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DaydetailHeaderSection(
                    dayLabel: _dayLabel,
                    dayScore: _dayScoreLabel,
                  ),
                  SizedBox(height: AppThemeSpacing.s20.h),
                  DayDetailListSection(detail: _detail),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + AppThemeSpacing.s6.h,
            left: AppThemeSpacing.s25.w,
            child: const BackIconButton(),
          ),
        ],
      ),
    );
  }
}
