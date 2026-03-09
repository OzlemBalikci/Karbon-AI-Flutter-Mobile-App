import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/presentation/bloc/home_event.dart';
import 'package:karbon/features/home/presentation/bloc/home_state.dart';
import 'package:karbon/features/home/domain/repositories/home_repository_default.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(this._homeRepository) : super(HomeState.initial()) {
    on<HomeStarted>(_onStarted);
    on<HomeSurveyCompleted>(_onSurveyCompleted);
    on<HomeRefreshRequested>(_onRefreshRequested);
    on<HomeLoadFailed>(_onLoadFailed);
    on<HomeReturnedFromCarbonCalculate>(_onReturnedFromCarbonCalculate);
  }

  Future<void> _onStarted(HomeStarted event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading, error: null));

      final lastDate = await _homeRepository.getLastSurveyDate();

      final isNewMonth =
          lastDate == null || _isDifferentMonth(lastDate, DateTime.now());

      if (isNewMonth) {
        emit(state.copyWith(
          status: HomeStatus.loaded,
          viewType: HomeViewType.initial,
        ));
      } else {
        emit(state.copyWith(
          status: HomeStatus.loaded,
          viewType: HomeViewType.main,
        ));
      }
    } on Exception catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failed,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onSurveyCompleted(
      HomeSurveyCompleted event, Emitter<HomeState> emit) async {
    try {
      await _homeRepository.saveLastSurveyDate(DateTime.now());

      emit(state.copyWith(
        status: HomeStatus.loaded,
        viewType: HomeViewType.main,
        totalCarbon: event.carbonResult,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failed,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onRefreshRequested(
      HomeRefreshRequested event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));
      // TODO: veri yenileme
      emit(state.copyWith(status: HomeStatus.loaded));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failed,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onLoadFailed(
      HomeLoadFailed event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(
        status: HomeStatus.failed,
        error: event.message,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failed,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onReturnedFromCarbonCalculate(
      HomeReturnedFromCarbonCalculate event, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(
        status: HomeStatus.loaded,
        viewType: HomeViewType.main,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(
        status: HomeStatus.failed,
        error: e.toString(),
      ));
    }
  }

  bool _isDifferentMonth(DateTime a, DateTime b) =>
      a.year != b.year || a.month != b.month;
}
