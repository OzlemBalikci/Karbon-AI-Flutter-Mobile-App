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

  static String _dateQueryParam(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-'
      '${d.month.toString().padLeft(2, '0')}-'
      '${d.day.toString().padLeft(2, '0')}';

  Future<void> _onStarted(
    CalendarStarted event,
    Emitter<CalendarState> emit,
  ) async {
    final day = _dateOnly(event.initialDay ?? DateTime.now());
    emit(
      state.copyWith(
        focusedDay: day,
        selectedDay: day,
        gridError: null,
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
        gridError: null,
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
    final prevSelected = state.selectedDay;

    emit(
      state.copyWith(
        focusedDay: newFocused,
        selectedDay: newSelected,
      ),
    );

    final monthChanged = prevFocused.year != newFocused.year ||
        prevFocused.month != newFocused.month;
    final halfChanged = (prevSelected.day <= 15) != (newSelected.day <= 15);

    if (monthChanged || halfChanged) {
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
        gridStatus: CalendarGridStatus.loading,
        dayDetailStatus: CalendarDayDetailStatus.loading,
        gridError: null,
        dayDetailError: null,
        dayDetail: null,
      ),
    );

    final year = focused.year;
    final month = focused.month;
    final period = selected.day <= 15 ? 1 : 2;

    final calendarFuture = _getCalendar(year: year, month: month);
    final monthlyFuture = _getMonthlyActivities(
      year: year,
      month: month,
      period: period,
    );

    final calendarResult = await calendarFuture;
    final monthlyResult = await monthlyFuture;

    DailyCalendarEntity? cal;
    DailyMonthlyActivitiesEntity? mon;
    String? gridErr;

    calendarResult.fold(
      (e) => gridErr = e.message,
      (c) => cal = c,
    );
    monthlyResult.fold(
      (e) => gridErr ??= e.message,
      (m) => mon = m,
    );

    emit(
      state.copyWith(
        gridStatus: CalendarGridStatus.success,
        calendar: cal,
        monthly: mon,
        gridError: gridErr,
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
        dayDetailStatus: CalendarDayDetailStatus.loading,
        dayDetailError: null,
      ),
    );

    final result = await _getDetails(date: _dateQueryParam(selected));

    result.fold(
      (e) => emit(
        state.copyWith(
          dayDetailStatus: CalendarDayDetailStatus.failure,
          dayDetail: null,
          dayDetailError: e.message,
        ),
      ),
      (d) => emit(
        state.copyWith(
          dayDetailStatus: CalendarDayDetailStatus.success,
          dayDetail: d,
          dayDetailError: null,
        ),
      ),
    );
  }
}
