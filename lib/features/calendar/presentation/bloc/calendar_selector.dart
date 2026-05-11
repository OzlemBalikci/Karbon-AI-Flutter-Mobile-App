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

CalendarAsyncSlice<DailyMonthlyActivitiesEntity> _monthDetailSlice(
  CalendarState s,
) =>
    (
      status: s.monthDetailAsyncStatus,
      error: s.monthDetailError,
      data: s.monthDetail,
    );

CalendarAsyncSlice<DailyDayDetailEntity> _dayDetailSlice(CalendarState s) => (
      status: s.dayDetailAsyncStatus,
      error: s.dayDetailError,
      data: s.dayDetail,
    );

bool _isInitialGridLoading(
  CalendarAsyncSlice<DailyCalendarEntity> calendar,
  CalendarAsyncSlice<DailyMonthlyActivitiesEntity> monthDetail,
) {
  final loading = calendar.status == CalendarAsyncStatus.loading ||
      monthDetail.status == CalendarAsyncStatus.loading;
  return loading && calendar.data == null && monthDetail.data == null;
}

String _resolveMonthTotal(
  DailyMonthlyActivitiesEntity? monthDetail,
  DailyCalendarEntity? calendar,
) {
  if (monthDetail != null) {
    return formatCalendarScore(monthDetail.totalMonthlyScore);
  }
  if (calendar != null) return formatCalendarScore(calendar.totalScore);
  return '—';
}

String _resolveSelectedDayScore({
  required DateTime selectedDay,
  required DailyDayDetailEntity? dayDetail,
  required DailyCalendarEntity? calendar,
  required DailyMonthlyActivitiesEntity? monthDetail,
}) {
  if (dayDetail != null && dayDetail.activities.isNotEmpty) {
    return formatCalendarScore(dayDetail.totalScore);
  }

  final fromCalendar =
      calendar != null ? _scoreForDay(calendar.items, selectedDay) : null;
  if (fromCalendar != null) return formatCalendarScore(fromCalendar);

  final fromMonthDetail = monthDetail != null
      ? _monthlyDayTotalScore(monthDetail.dailyScores, selectedDay)
      : null;
  if (fromMonthDetail != null) return formatCalendarScore(fromMonthDetail);

  return '—';
}

CalendarScoreLabels selectCalendarScoreLabels(CalendarState s) {
  final calendar = _calendarSlice(s);
  final monthDetail = _monthDetailSlice(s);
  final dayDetail = _dayDetailSlice(s);

  final gridLoading = _isInitialGridLoading(calendar, monthDetail);
  final detailLoading = dayDetail.status == CalendarAsyncStatus.loading;

  if (gridLoading) {
    return (
      monthTotal: '…',
      selectedDayScore: '…',
      gridLoading: true,
      detailLoading: false,
    );
  }

  final monthTotal = _resolveMonthTotal(monthDetail.data, calendar.data);

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
    monthDetail: monthDetail.data,
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
    required super.builder,
  }) : super(
          selector: (s) => (
            status: statusSelector(s),
            error: errorSelector(s),
            data: dataSelector(s),
          ),
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

class CalendarMonthDetailAsyncSelector
    extends CalendarAsyncSelector<DailyMonthlyActivitiesEntity> {
  CalendarMonthDetailAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.monthDetailAsyncStatus,
          errorSelector: (s) => s.monthDetailError,
          dataSelector: (s) => s.monthDetail,
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

class CalendarQuestionDetailAsyncSelector
    extends CalendarAsyncSelector<ActivityQuestionDetailEntity> {
  CalendarQuestionDetailAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.selectedQuestionAsyncStatus,
          errorSelector: (s) => s.selectedQuestionError,
          dataSelector: (s) => s.selectedQuestion,
        );
}

class CalendarScoreLabelsSelector
    extends CalendarBlocSelector<CalendarScoreLabels> {
  CalendarScoreLabelsSelector({
    super.key,
    required super.builder,
  }) : super(selector: selectCalendarScoreLabels);
}
