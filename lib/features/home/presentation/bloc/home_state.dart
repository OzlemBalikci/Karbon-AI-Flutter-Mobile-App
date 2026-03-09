import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_state.freezed.dart';

enum HomeStatus {
  loading,
  loaded,
  failed,
}

enum HomeViewType {
  initial,
  main,
}

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(HomeStatus.loading) HomeStatus status,
    @Default(HomeViewType.initial) HomeViewType viewType,
    double? totalCarbon,
    double? savedCarbon,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStatus.loading,
        viewType: HomeViewType.initial,
      );
  bool get isLoading => status == HomeStatus.loading;
  bool get isLoaded => status == HomeStatus.loaded;
  bool get hasError => status == HomeStatus.failed;

  bool get isInitialView => viewType == HomeViewType.initial;
  bool get isMainView => viewType == HomeViewType.main;
}
