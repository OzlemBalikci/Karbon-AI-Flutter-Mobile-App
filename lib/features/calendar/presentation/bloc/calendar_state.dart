import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

part 'calendar_state.freezed.dart';

enum CalendarAsyncStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default(CalendarAsyncStatus.initial)
    CalendarAsyncStatus calendarFirstOpenAsyncStatus,
    @Default(CalendarAsyncStatus.initial)
    CalendarAsyncStatus dayDetailAsyncStatus,
    @Default(CalendarAsyncStatus.initial)
    CalendarAsyncStatus monthlyAsyncStatus,
    @Default(CalendarAsyncStatus.initial)
    CalendarAsyncStatus selectedQuestionAsyncStatus,
    DailyCalendarEntity? calendar,
    DailyMonthlyActivitiesEntity? monthly,
    DailyDayDetailEntity? dayDetail,
    ActivityQuestionOptionEntity? selectedQuestion,
    required DateTime focusedDay,
    required DateTime selectedDay,
    String? calendarFirstOpenError,
    String? dayDetailError,
    String? monthlyError,
    String? selectedQuestionError,
  }) = _CalendarState;

  factory CalendarState.initial() {
    final n = DateTime.now();
    final d = DateTime(n.year, n.month, n.day);
    return CalendarState(focusedDay: d, selectedDay: d);
  }
}
