import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_event.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_state.dart';
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository_impl.dart';

@singleton
class LeaderofmonthBloc extends Bloc<LeaderofmonthEvent, LeaderofmonthState> {
  final LeaderboardRepository _leaderofmonthRepository;

  LeaderofmonthBloc(this._leaderofmonthRepository)
      : super(LeaderofmonthState.initial()) {
    on<LeaderofmonthStarted>(_onStarted);
    on<LeaderofmonthRefreshRequested>(_onRefreshRequested);
    on<LeaderofmonthLoadFailed>(_onLoadFailed);
  }

  Future<void> _onStarted(
      LeaderofmonthStarted event, Emitter<LeaderofmonthState> emit) async {
    await _loadLeaderboard(emit);
  }

  Future<void> _onRefreshRequested(LeaderofmonthRefreshRequested event,
      Emitter<LeaderofmonthState> emit) async {
    await _loadLeaderboard(emit);
  }

  Future<void> _onLoadFailed(
      LeaderofmonthLoadFailed event, Emitter<LeaderofmonthState> emit) async {
    emit(state.copyWith(
        status: LeaderofmonthStatus.error, error: event.message));
  }

  Future<void> _loadLeaderboard(Emitter<LeaderofmonthState> emit) async {
    try {
      emit(state.copyWith(status: LeaderofmonthStatus.loading, error: null));
      final result = await _leaderofmonthRepository.getLeaderboardDataEntity();

      result.fold(
        (e) => emit(state.copyWith(
            status: LeaderofmonthStatus.error, error: e.toString())),
        (data) => emit(state.copyWith(
          status: LeaderofmonthStatus.success,
          leaders: data.leaders,
          currentUserRank: data.currentUserRank,
          error: null,
        )),
      );
    } on Exception catch (e) {
      emit(state.copyWith(
          status: LeaderofmonthStatus.error, error: e.toString()));
    }
  }
}
