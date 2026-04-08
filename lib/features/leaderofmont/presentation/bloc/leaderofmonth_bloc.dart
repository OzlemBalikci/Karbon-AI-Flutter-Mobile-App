import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/domain/usecases/get_leaderboard_data_usecase.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_event.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_state.dart';

@injectable
class LeaderofmonthBloc extends Bloc<LeaderofmonthEvent, LeaderofmonthState> {
  LeaderofmonthBloc(this._getLeaderboardData)
      : super(LeaderofmonthState.initial()) {
    on<LeaderofmonthInitialized>(_onInitialized);
    on<LeaderofmonthRefreshRequested>(_onRefreshRequested);
  }

  final GetLeaderboardDataUseCase _getLeaderboardData;

  int? _lastMonth;
  int? _lastYear;

  Future<void> _onInitialized(
    LeaderofmonthInitialized event,
    Emitter<LeaderofmonthState> emit,
  ) async {
    _lastMonth = event.month;
    _lastYear = event.year;

    emit(state.copyWith(
      status: LeaderofmonthStatus.loading,
      error: null,
    ));
    await _fetch(emit, month: event.month, year: event.year);
  }

  Future<void> _onRefreshRequested(
    LeaderofmonthRefreshRequested event,
    Emitter<LeaderofmonthState> emit,
  ) async {
    if (_lastMonth == null || _lastYear == null) return;
    await _fetch(emit, month: _lastMonth!, year: _lastYear!, silent: true);
  }

  Future<void> _fetch(
    Emitter<LeaderofmonthState> emit, {
    required int month,
    required int year,
    bool silent = false,
  }) async {
    final result = await _getLeaderboardData(month: month, year: year);

    result.fold(
      (exception) {
        if (!silent) {
          emit(state.copyWith(
            status: LeaderofmonthStatus.error,
            error: exception.toString(),
          ));
        }
      },
      (data) => emit(state.copyWith(
        status: LeaderofmonthStatus.success,
        leaders: [...data.podium, ...data.leaders],
        podiumSize: data.podium.length,
        currentUserRank: data.currentUserRank,
        error: null,
      )),
    );
  }
}
