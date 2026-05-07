import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_event.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_selector.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_state.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/score_badge.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/widgets/score_card.dart';

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

  /// `yyyy-MM-dd` veya ISO 8601 string
  final String date;

  @override
  State<DayDetailPage> createState() => _DayDetailPageState();
}

class _DayDetailPageState extends State<DayDetailPage> {
  late final CalendarBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<CalendarBloc>();
    final dateTime = DateTime.tryParse(widget.date) ??
        DateTime.tryParse('${widget.date}T00:00:00') ??
        DateTime.now();
    _bloc.add(CalendarEvent.dayDetailPageOpened(selectedDay: dateTime));
  }

  String get _dayLabel {
    final d = DateTime.tryParse(widget.date) ??
        DateTime.tryParse('${widget.date}T00:00:00') ??
        DateTime.now();
    return formatFullDate(d);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          SafeArea(
            child: CalendarDayDetailAsyncSelector(
              builder: (slice) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DaydetailHeaderSection(
                      dayLabel: _dayLabel,
                      dayScore: slice.data != null
                          ? _formatDayDetailScore(slice.data!.totalScore)
                          : slice.status == CalendarAsyncStatus.loading
                              ? '…'
                              : '—',
                    ),
                    SizedBox(height: AppThemeSpacing.s20.h),
                    DayDetailListSection(detail: slice.data),
                  ],
                ),
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
