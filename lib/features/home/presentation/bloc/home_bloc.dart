import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/domain/usecases/get_home_usecase.dart';
import 'package:karbon/features/home/presentation/bloc/home_event.dart';
import 'package:karbon/features/home/presentation/bloc/home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._getHome) : super(HomeState.initial()) {
    on<HomeFetchRequested>(_onFetchRequested);
    on<HomeRefreshRequested>(_onRefreshRequested);
    on<HomePollCompleted>(_onPollCompleted);
  }

  final GetHomeUseCase _getHome;

  Future<void> _onFetchRequested(
    HomeFetchRequested event,
    Emitter<HomeState> emit,
  ) =>
      _loadDashboard(emit);

  Future<void> _onRefreshRequested(
    HomeRefreshRequested event,
    Emitter<HomeState> emit,
  ) =>
      _loadDashboard(emit);

  Future<void> _loadDashboard(Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading, error: null));
      final result = await _getHome();
      result.fold(
        (e) => emit(state.copyWith(
          status: HomeStatus.failure,
          error: e.toString(),
        )),
        (dashboard) => emit(state.copyWith(
          status: HomeStatus.success,
          hasCompletedPoll: dashboard.hasCompletedPoll,
          globalTarget: dashboard.globalTarget,
          monthlyTarget: dashboard.monthlyTarget,
          topLeaders: dashboard.topLeaders ?? [],
          error: null,
        )),
      );
    } on Exception catch (e) {
      emit(state.copyWith(status: HomeStatus.failure, error: e.toString()));
    }
  }

  void _onPollCompleted(
    HomePollCompleted event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(hasCompletedPoll: true));
  }
}
