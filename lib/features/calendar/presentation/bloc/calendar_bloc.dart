import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/usecases/get_activity_question_detail_usecase.dart';
import 'package:karbon/features/calendar/domain/usecases/get_calendar_usecase.dart';
import 'package:karbon/features/calendar/domain/usecases/get_details_usecase.dart';
import 'package:karbon/features/calendar/domain/usecases/get_monthly_activities_usecase.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_event.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_state.dart';

@injectable
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(
    this._getCalendar,
    this._getMonthlyActivities,
    this._getDetails,
    this._getActivityQuestionDetail,
  ) : super(CalendarState.initial()) {
    on<CalendarStarted>(_onStarted);
    on<CalendarFirstOpenPageOpened>(_onCalendarFirstOpenPageOpened);
    on<CalendarDayDetailPageOpened>(_onDayDetailPageOpened);
    on<CalendarQuestionDetailPageOpened>(_onQuestionDetailPageOpened);
    on<CalendarMonthDetailPageOpened>(_onMonthDetailPageOpened);
    on<CalendarPreviousMonthTapped>(_onPreviousMonthTapped);
    on<CalendarNextMonthTapped>(_onNextMonthTapped);
    on<CalendarPageScrolled>(_onPageScrolled);
    on<CalendarDaySelected>(_onDaySelected);
    on<CalendarQuestionDetailDismissed>(_onQuestionDetailDismissed);
  }

  final GetCalendarUsecase _getCalendar;
  final GetMonthlyActivitiesUsecase _getMonthlyActivities;
  final GetDetailsUsecase _getDetails;
  final GetActivityQuestionDetailUsecase _getActivityQuestionDetail;

  static DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);

  Future<void> _onStarted(
    CalendarStarted event,
    Emitter<CalendarState> emit,
  ) async {
    final day = _dateOnly(event.initialDay ?? DateTime.now());
    emit(state.copyWith(
      focusedDay: day,
      selectedDay: day,
      calendarFirstOpenError: null,
      monthDetailError: null,
      dayDetailError: null,
      selectedQuestionError: null,
    ));
  }

  Future<void> _onCalendarFirstOpenPageOpened(
    CalendarFirstOpenPageOpened event,
    Emitter<CalendarState> emit,
  ) async {
    final focused = _dateOnly(event.focusedDay);
    final selected = _dateOnly(event.selectedDay);
    emit(state.copyWith(
      focusedDay: focused,
      selectedDay: selected,
      calendarFirstOpenError: null,
      monthDetailError: null,
      dayDetailError: null,
    ));
    await _loadCalendarAndMonthDetail(emit, focusedDay: focused);
    await _loadDayDetail(emit, selected: selected);
  }

  Future<void> _onDayDetailPageOpened(
    CalendarDayDetailPageOpened event,
    Emitter<CalendarState> emit,
  ) async {
    final selected = _dateOnly(event.selectedDay);
    emit(state.copyWith(selectedDay: selected));
    await _loadDayDetail(emit, selected: selected);
  }

  Future<void> _onQuestionDetailPageOpened(
    CalendarQuestionDetailPageOpened event,
    Emitter<CalendarState> emit,
  ) async {
    await _loadActivityQuestionDetail(emit, questionId: event.questionId);
  }

  Future<void> _onMonthDetailPageOpened(
    CalendarMonthDetailPageOpened event,
    Emitter<CalendarState> emit,
  ) async {
    await _loadCalendarAndMonthDetail(
      emit,
      focusedDay: DateTime(event.year, event.month, 1),
    );
  }

  Future<void> _onPreviousMonthTapped(
    CalendarPreviousMonthTapped event,
    Emitter<CalendarState> emit,
  ) async {
    final current = state.focusedDay;
    final target = DateTime(current.year, current.month - 1, 1);
    if (target.isBefore(DateTime(2018, 1, 1))) return;
    emit(state.copyWith(focusedDay: target, selectedDay: target));
    await _loadCalendarAndMonthDetail(emit, focusedDay: target);
    await _loadDayDetail(emit, selected: target);
  }

  Future<void> _onNextMonthTapped(
    CalendarNextMonthTapped event,
    Emitter<CalendarState> emit,
  ) async {
    final current = state.focusedDay;
    final target = DateTime(current.year, current.month + 1, 1);
    if (target.isAfter(DateTime(2040, 12, 1))) return;
    emit(state.copyWith(focusedDay: target, selectedDay: target));
    await _loadCalendarAndMonthDetail(emit, focusedDay: target);
    await _loadDayDetail(emit, selected: target);
  }

  Future<void> _onPageScrolled(
    CalendarPageScrolled event,
    Emitter<CalendarState> emit,
  ) async {
    final focused = _dateOnly(event.focusedDay);
    emit(state.copyWith(focusedDay: focused, selectedDay: focused));
    await _loadCalendarAndMonthDetail(emit, focusedDay: focused);
    await _loadDayDetail(emit, selected: focused);
  }

  Future<void> _onDaySelected(
    CalendarDaySelected event,
    Emitter<CalendarState> emit,
  ) async {
    final newFocused = _dateOnly(event.focusedDay);
    final newSelected = _dateOnly(event.selectedDay);
    final prevFocused = state.focusedDay;

    emit(state.copyWith(focusedDay: newFocused, selectedDay: newSelected));

    final monthChanged = prevFocused.year != newFocused.year ||
        prevFocused.month != newFocused.month;

    if (monthChanged) {
      await _loadCalendarAndMonthDetail(emit, focusedDay: newFocused);
    }
    await _loadDayDetail(emit, selected: newSelected);
  }

  Future<void> _loadActivityQuestionDetail(
    Emitter<CalendarState> emit, {
    required String questionId,
  }) async {
    emit(state.copyWith(
      selectedQuestionAsyncStatus: CalendarAsyncStatus.loading,
      selectedQuestion: null,
      selectedQuestionError: null,
    ));

    final result = await _getActivityQuestionDetail(id: questionId);

    result.fold(
      (e) => emit(state.copyWith(
        selectedQuestionAsyncStatus: CalendarAsyncStatus.failure,
        selectedQuestionError: e.message,
      )),
      (detail) => emit(state.copyWith(
        selectedQuestionAsyncStatus: CalendarAsyncStatus.success,
        selectedQuestion: detail,
      )),
    );
  }

  Future<void> _onQuestionDetailDismissed(
    CalendarQuestionDetailDismissed event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(
      selectedQuestion: null,
      selectedQuestionAsyncStatus: CalendarAsyncStatus.initial,
      selectedQuestionError: null,
    ));
  }

  Future<void> _loadCalendarAndMonthDetail(
    Emitter<CalendarState> emit, {
    required DateTime focusedDay,
  }) async {
    emit(state.copyWith(
      calendarFirstOpenAsyncStatus: CalendarAsyncStatus.loading,
      monthDetailAsyncStatus: CalendarAsyncStatus.loading,
      calendarFirstOpenError: null,
      monthDetailError: null,
    ));

    final results = await Future.wait([
      _getCalendar(year: focusedDay.year, month: focusedDay.month),
      _getMonthlyActivities(year: focusedDay.year, month: focusedDay.month),
    ]);

    final calResult = results[0];
    final monthDetailResult = results[1];

    DailyCalendarEntity? cal;
    DailyMonthlyActivitiesEntity? monthDetail;
    String? calErr;
    String? monthDetailErr;

    calResult.fold(
        (e) => calErr = e.message, (c) => cal = c as DailyCalendarEntity);
    monthDetailResult.fold((e) => monthDetailErr = e.message,
        (m) => monthDetail = m as DailyMonthlyActivitiesEntity);

    emit(state.copyWith(
      calendarFirstOpenAsyncStatus: calErr == null
          ? CalendarAsyncStatus.success
          : CalendarAsyncStatus.failure,
      monthDetailAsyncStatus: monthDetailErr == null
          ? CalendarAsyncStatus.success
          : CalendarAsyncStatus.failure,
      calendar: cal,
      monthDetail: monthDetail,
      calendarFirstOpenError: calErr,
      monthDetailError: monthDetailErr,
    ));
  }

  Future<void> _loadDayDetail(
    Emitter<CalendarState> emit, {
    required DateTime selected,
  }) async {
    emit(state.copyWith(
      dayDetailAsyncStatus: CalendarAsyncStatus.loading,
      dayDetailError: null,
    ));

    final result = await _getDetails(date: selected);

    result.fold(
      (e) => emit(state.copyWith(
        dayDetailAsyncStatus: CalendarAsyncStatus.failure,
        dayDetail: null,
        dayDetailError: e.message,
      )),
      (detail) => emit(state.copyWith(
        dayDetailAsyncStatus: CalendarAsyncStatus.success,
        dayDetail: detail,
      )),
    );
  }
}
