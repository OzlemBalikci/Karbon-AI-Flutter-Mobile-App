import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

part 'calendar_state.freezed.dart';

/// BLoC tarafından hesaplanan "Tümünü Göster" navigasyon argümanları.
class SeeAllNavArgs {
  const SeeAllNavArgs({
    required this.year,
    required this.month,
    required this.period,
  });

  final int year;
  final int month;

  /// `1` = 1–15, `2` = 16–31
  final int period;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeeAllNavArgs &&
          other.year == year &&
          other.month == month &&
          other.period == period;

  @override
  int get hashCode => Object.hash(year, month, period);
}

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
    CalendarAsyncStatus monthDetailAsyncStatus,
    @Default(CalendarAsyncStatus.initial)
    CalendarAsyncStatus selectedQuestionAsyncStatus,
    DailyCalendarEntity? calendar,
    DailyMonthlyActivitiesEntity? monthDetail,
    DailyDayDetailEntity? dayDetail,
    ActivityQuestionDetailEntity? selectedQuestion,
    required DateTime focusedDay,
    required DateTime selectedDay,
    String? calendarFirstOpenError,
    String? dayDetailError,
    String? monthDetailError,
    String? selectedQuestionError,
    SeeAllNavArgs? seeAllNav,
  }) = _CalendarState;

  factory CalendarState.initial() {
    final n = DateTime.now();
    final d = DateTime(n.year, n.month, n.day);
    return CalendarState(focusedDay: d, selectedDay: d);
  }
}
