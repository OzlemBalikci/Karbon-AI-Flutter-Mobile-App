import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
sealed class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.started({
    DateTime? initialDay,
  }) = CalendarStarted;

  const factory CalendarEvent.calendarFirstOpenPageOpened({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarFirstOpenPageOpened;

  const factory CalendarEvent.dayDetailPageOpened({
    required DateTime selectedDay,
  }) = CalendarDayDetailPageOpened;

  const factory CalendarEvent.questionDetailPageOpened({
    required String questionId,
  }) = CalendarQuestionDetailPageOpened;

  const factory CalendarEvent.monthDetailPageOpened({
    required int year,
    required int month,
  }) = CalendarMonthDetailPageOpened;

  const factory CalendarEvent.daySelected({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarDaySelected;

  const factory CalendarEvent.pageScrolled({
    required DateTime focusedDay,
  }) = CalendarPageScrolled;

  const factory CalendarEvent.previousMonthTapped() =
      CalendarPreviousMonthTapped;

  const factory CalendarEvent.nextMonthTapped() = CalendarNextMonthTapped;

  const factory CalendarEvent.questionDetailDismissed() =
      CalendarQuestionDetailDismissed;

  const factory CalendarEvent.seeAllRequested() = CalendarSeeAllRequested;

  const factory CalendarEvent.seeAllHandled() = CalendarSeeAllHandled;
}
