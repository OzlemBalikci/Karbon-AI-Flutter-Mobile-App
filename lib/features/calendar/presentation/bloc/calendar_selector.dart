import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_state.dart';

String formatCalendarScore(double value) {
  if (value == value.roundToDouble()) {
    return value.round().toString();
  }
  return value.toStringAsFixed(1);
}

bool _isSameCalendarDay(String dateStr, DateTime day) {
  final parsed = DateTime.tryParse(dateStr);
  if (parsed == null) return false;
  return parsed.year == day.year &&
      parsed.month == day.month &&
      parsed.day == day.day;
}

double? _scoreForDay(List<DailyCalendarItemEntity> items, DateTime day) {
  for (final item in items) {
    if (_isSameCalendarDay(item.date, day)) return item.score;
  }
  return null;
}

double? _monthlyDayTotalScore(
  List<DailyMonthlyDayScoreEntity> dailyScores,
  DateTime day,
) {
  for (final row in dailyScores) {
    if (_isSameCalendarDay(row.date, day)) return row.totalScore;
  }
  return null;
}

/// Skor kartları için hazır etiketler ([calendar.md] akışı).
typedef CalendarScoreLabels = ({
  String monthTotal,
  String selectedDayScore,
  bool gridLoading,
  bool detailLoading,
});

CalendarAsyncSlice<DailyCalendarEntity> _calendarSlice(CalendarState s) => (
      status: s.calendarFirstOpenAsyncStatus,
      error: s.calendarFirstOpenError,
      data: s.calendar,
    );

CalendarAsyncSlice<DailyMonthlyActivitiesEntity> _monthlySlice(
  CalendarState s,
) =>
    (
      status: s.monthlyAsyncStatus,
      error: s.monthlyError,
      data: s.monthly,
    );

CalendarAsyncSlice<DailyDayDetailEntity> _dayDetailSlice(CalendarState s) => (
      status: s.dayDetailAsyncStatus,
      error: s.dayDetailError,
      data: s.dayDetail,
    );

bool _isInitialGridLoading(
  CalendarAsyncSlice<DailyCalendarEntity> calendar,
  CalendarAsyncSlice<DailyMonthlyActivitiesEntity> monthly,
) {
  final loading = calendar.status == CalendarAsyncStatus.loading ||
      monthly.status == CalendarAsyncStatus.loading;
  return loading && calendar.data == null && monthly.data == null;
}

String _resolveMonthTotal(
  DailyMonthlyActivitiesEntity? monthly,
  DailyCalendarEntity? calendar,
) {
  if (monthly != null) return formatCalendarScore(monthly.totalMonthlyScore);
  if (calendar != null) return formatCalendarScore(calendar.totalScore);
  return '—';
}

String _resolveSelectedDayScore({
  required DateTime selectedDay,
  required DailyDayDetailEntity? dayDetail,
  required DailyCalendarEntity? calendar,
  required DailyMonthlyActivitiesEntity? monthly,
}) {
  if (dayDetail != null && dayDetail.activities.isNotEmpty) {
    return formatCalendarScore(dayDetail.totalScore);
  }

  final fromCalendar =
      calendar != null ? _scoreForDay(calendar.items, selectedDay) : null;
  if (fromCalendar != null) return formatCalendarScore(fromCalendar);

  final fromMonthly = monthly != null
      ? _monthlyDayTotalScore(monthly.dailyScores, selectedDay)
      : null;
  if (fromMonthly != null) return formatCalendarScore(fromMonthly);

  return '—';
}

CalendarScoreLabels selectCalendarScoreLabels(CalendarState s) {
  final calendar = _calendarSlice(s);
  final monthly = _monthlySlice(s);
  final dayDetail = _dayDetailSlice(s);

  final gridLoading = _isInitialGridLoading(calendar, monthly);
  final detailLoading = dayDetail.status == CalendarAsyncStatus.loading;

  if (gridLoading) {
    return (
      monthTotal: '…',
      selectedDayScore: '…',
      gridLoading: true,
      detailLoading: false,
    );
  }

  final monthTotal = _resolveMonthTotal(monthly.data, calendar.data);

  if (detailLoading) {
    return (
      monthTotal: monthTotal,
      selectedDayScore: '…',
      gridLoading: false,
      detailLoading: true,
    );
  }

  final dayScore = _resolveSelectedDayScore(
    selectedDay: s.selectedDay,
    dayDetail: dayDetail.data,
    calendar: calendar.data,
    monthly: monthly.data,
  );

  return (
    monthTotal: monthTotal,
    selectedDayScore: dayScore,
    gridLoading: false,
    detailLoading: false,
  );
}

class CalendarBlocSelector<T>
    extends BlocSelector<CalendarBloc, CalendarState, T> {
  CalendarBlocSelector({
    super.key,
    required super.selector,
    required Widget Function(T value) builder,
  }) : super(builder: (context, value) => builder(value));
}

typedef CalendarAsyncSlice<T> = ({
  CalendarAsyncStatus status,
  String? error,
  T? data,
});

class CalendarAsyncSelector<T>
    extends CalendarBlocSelector<CalendarAsyncSlice<T>> {
  CalendarAsyncSelector({
    super.key,
    required CalendarAsyncStatus Function(CalendarState) statusSelector,
    required String? Function(CalendarState) errorSelector,
    required T? Function(CalendarState) dataSelector,
    required Widget Function(CalendarAsyncSlice<T> slice) builder,
  }) : super(
          selector: (s) => (
            status: statusSelector(s),
            error: errorSelector(s),
            data: dataSelector(s),
          ),
          builder: builder,
        );
}

class CalendarOverviewAsyncSelector
    extends CalendarAsyncSelector<DailyCalendarEntity> {
  CalendarOverviewAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.calendarFirstOpenAsyncStatus,
          errorSelector: (s) => s.calendarFirstOpenError,
          dataSelector: (s) => s.calendar,
        );
}

class CalendarMonthlyAsyncSelector
    extends CalendarAsyncSelector<DailyMonthlyActivitiesEntity> {
  CalendarMonthlyAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.monthlyAsyncStatus,
          errorSelector: (s) => s.monthlyError,
          dataSelector: (s) => s.monthly,
        );
}

class CalendarDayDetailAsyncSelector
    extends CalendarAsyncSelector<DailyDayDetailEntity> {
  CalendarDayDetailAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.dayDetailAsyncStatus,
          errorSelector: (s) => s.dayDetailError,
          dataSelector: (s) => s.dayDetail,
        );
}

class CalendarScoreLabelsSelector
    extends CalendarBlocSelector<CalendarScoreLabels> {
  CalendarScoreLabelsSelector({
    super.key,
    required Widget Function(CalendarScoreLabels labels) builder,
  }) : super(
          selector: selectCalendarScoreLabels,
          builder: builder,
        );
}
