import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
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
  ) : super(CalendarState.initial()) {
    on<CalendarStarted>(_onStarted);
    on<CalendarGridReloadRequested>(_onGridReloadRequested);
    on<CalendarDaySelectionChanged>(_onDaySelectionChanged);
  }

  final GetCalendarUsecase _getCalendar;
  final GetMonthlyActivitiesUsecase _getMonthlyActivities;
  final GetDetailsUsecase _getDetails;

  static DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);

  Future<void> _onStarted(
    CalendarStarted event,
    Emitter<CalendarState> emit,
  ) async {
    final day = _dateOnly(event.initialDay ?? DateTime.now());
    emit(
      state.copyWith(
        focusedDay: day,
        selectedDay: day,
        calendarFirstOpenError: null,
        monthlyError: null,
        dayDetailError: null,
      ),
    );
    await _loadGridAndDetail(emit, day, day);
  }

  Future<void> _onGridReloadRequested(
    CalendarGridReloadRequested event,
    Emitter<CalendarState> emit,
  ) async {
    final focused = _dateOnly(event.focusedDay);
    final selected = _dateOnly(event.selectedDay);
    emit(
      state.copyWith(
        focusedDay: focused,
        selectedDay: selected,
        calendarFirstOpenError: null,
        monthlyError: null,
        dayDetailError: null,
      ),
    );
    await _loadGridAndDetail(emit, focused, selected);
  }

  Future<void> _onDaySelectionChanged(
    CalendarDaySelectionChanged event,
    Emitter<CalendarState> emit,
  ) async {
    final newFocused = _dateOnly(event.focusedDay);
    final newSelected = _dateOnly(event.selectedDay);
    final prevFocused = state.focusedDay;

    emit(
      state.copyWith(
        focusedDay: newFocused,
        selectedDay: newSelected,
      ),
    );

    final monthChanged = prevFocused.year != newFocused.year ||
        prevFocused.month != newFocused.month;

    if (monthChanged) {
      await _loadGridAndDetail(emit, newFocused, newSelected);
    } else {
      await _loadDayDetailOnly(emit, newSelected);
    }
  }

  Future<void> _loadGridAndDetail(
    Emitter<CalendarState> emit,
    DateTime focused,
    DateTime selected,
  ) async {
    emit(
      state.copyWith(
        calendarFirstOpenAsyncStatus: CalendarAsyncStatus.loading,
        monthlyAsyncStatus: CalendarAsyncStatus.loading,
        dayDetailAsyncStatus: CalendarAsyncStatus.loading,
        calendarFirstOpenError: null,
        monthlyError: null,
        dayDetailError: null,
        dayDetail: null,
      ),
    );

    final year = focused.year;
    final month = focused.month;

    final calendarFuture = _getCalendar(year: year, month: month);
    final monthlyFuture = _getMonthlyActivities(
      year: year,
      month: month,
    );

    final calendarResult = await calendarFuture;
    final monthlyResult = await monthlyFuture;

    DailyCalendarEntity? cal;
    DailyMonthlyActivitiesEntity? mon;
    String? calendarErr;
    String? monthlyErr;

    calendarResult.fold(
      (e) => calendarErr = e.message,
      (c) => cal = c,
    );
    monthlyResult.fold(
      (e) => monthlyErr = e.message,
      (m) => mon = m,
    );

    emit(
      state.copyWith(
        calendarFirstOpenAsyncStatus:
            calendarErr == null ? CalendarAsyncStatus.success : CalendarAsyncStatus.failure,
        monthlyAsyncStatus:
            monthlyErr == null ? CalendarAsyncStatus.success : CalendarAsyncStatus.failure,
        calendar: cal,
        monthly: mon,
        calendarFirstOpenError: calendarErr,
        monthlyError: monthlyErr,
      ),
    );

    await _loadDayDetailOnly(emit, selected);
  }

  Future<void> _loadDayDetailOnly(
    Emitter<CalendarState> emit,
    DateTime selected,
  ) async {
    emit(
      state.copyWith(
        dayDetailAsyncStatus: CalendarAsyncStatus.loading,
        dayDetailError: null,
      ),
    );

    final result = await _getDetails(date: selected);

    result.fold(
      (e) => emit(
        state.copyWith(
          dayDetailAsyncStatus: CalendarAsyncStatus.failure,
          dayDetail: null,
          dayDetailError: e.message,
        ),
      ),
      (d) => emit(
        state.copyWith(
          dayDetailAsyncStatus: CalendarAsyncStatus.success,
          dayDetail: d,
          dayDetailError: null,
        ),
      ),
    );
  }
}
