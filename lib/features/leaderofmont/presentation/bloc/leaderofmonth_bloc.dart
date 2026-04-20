import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/domain/usecases/get_leaderboard_data_usecase.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_event.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_state.dart';

@injectable
class LeaderofmonthBloc extends Bloc<LeaderofmonthEvent, LeaderofmonthState> {
  LeaderofmonthBloc(this._getLeaderboardData)
      : super(LeaderofmonthState.initial()) {
    on<LeaderofmonthFetchRequested>(_onFetchRequested);
    on<LeaderofmonthRefreshRequested>(_onRefreshRequested);
  }

  final GetLeaderboardDataUseCase _getLeaderboardData;

  Future<void> _onFetchRequested(
    LeaderofmonthFetchRequested event,
    Emitter<LeaderofmonthState> emit,
  ) async {
    if (state.status == LeaderofmonthStatus.success) return;

    emit(state.copyWith(status: LeaderofmonthStatus.loading, error: null));
    await _fetchLeaderboard(emit);
  }

  Future<void> _onRefreshRequested(
    LeaderofmonthRefreshRequested event,
    Emitter<LeaderofmonthState> emit,
  ) async {
    emit(state.copyWith(status: LeaderofmonthStatus.loading, error: null));
    await _fetchLeaderboard(emit);
  }

  Future<void> _fetchLeaderboard(Emitter<LeaderofmonthState> emit) async {
    try {
      final now = DateTime.now();
      final result = await _getLeaderboardData(
        month: now.month,
        year: now.year,
      );
      result.fold(
        (exception) => emit(
          state.copyWith(
            status: LeaderofmonthStatus.failure,
            error: exception.toString(),
          ),
        ),
        (data) => emit(
          state.copyWith(
            status: LeaderofmonthStatus.success,
            podium: data.podium,
            leaders: data.leaders,
            currentUserRank: data.currentUserRank,
            error: null,
          ),
        ),
      );
    } catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(
        state.copyWith(
          status: LeaderofmonthStatus.failure,
          error: error.toString(),
        ),
      );
    }
  }
}
