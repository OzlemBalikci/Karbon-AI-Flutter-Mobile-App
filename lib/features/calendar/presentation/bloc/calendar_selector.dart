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

CalendarScoreLabels selectCalendarScoreLabels(CalendarState s) {
  final gridLoading = s.gridStatus == CalendarGridStatus.loading &&
      s.calendar == null &&
      s.monthly == null;
  final detailLoading = s.dayDetailStatus == CalendarDayDetailStatus.loading;

  if (gridLoading) {
    return (
      monthTotal: '…',
      selectedDayScore: '…',
      gridLoading: true,
      detailLoading: false,
    );
  }

  String monthTotal = '—';
  final mon = s.monthly;
  final cal = s.calendar;
  if (mon != null) {
    monthTotal = formatCalendarScore(mon.totalMonthlyScore);
  } else if (cal != null) {
    monthTotal = formatCalendarScore(cal.totalScore);
  }

  if (detailLoading) {
    return (
      monthTotal: monthTotal,
      selectedDayScore: '…',
      gridLoading: false,
      detailLoading: true,
    );
  }

  String dayScore = '—';
  final detail = s.dayDetail;
  if (detail != null && detail.activities.isNotEmpty) {
    dayScore = formatCalendarScore(detail.totalScore);
  } else {
    final fromCal =
        cal != null ? _scoreForDay(cal.items, s.selectedDay) : null;
    if (fromCal != null) {
      dayScore = formatCalendarScore(fromCal);
    } else {
      final fromMonthly = mon != null
          ? _monthlyDayTotalScore(mon.dailyScores, s.selectedDay)
          : null;
      if (fromMonthly != null) {
        dayScore = formatCalendarScore(fromMonthly);
      }
    }
  }

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
