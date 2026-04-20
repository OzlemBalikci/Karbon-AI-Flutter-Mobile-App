import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

part 'calendar_state.freezed.dart';

/// GET `/calendar` + `/monthly` birlikte yüklenir.
enum CalendarGridStatus {
  initial,
  loading,
  success,
  failure,
}

/// GET `?date=` gün detayı.
enum CalendarDayDetailStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default(CalendarGridStatus.initial) CalendarGridStatus gridStatus,
    @Default(CalendarDayDetailStatus.initial)
    CalendarDayDetailStatus dayDetailStatus,
    DailyCalendarEntity? calendar,
    DailyMonthlyActivitiesEntity? monthly,
    DailyDayDetailEntity? dayDetail,
    required DateTime focusedDay,
    required DateTime selectedDay,
    String? gridError,
    String? dayDetailError,
  }) = _CalendarState;

  factory CalendarState.initial() {
    final n = DateTime.now();
    final d = DateTime(n.year, n.month, n.day);
    return CalendarState(focusedDay: d, selectedDay: d);
  }
}
