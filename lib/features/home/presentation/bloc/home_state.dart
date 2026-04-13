import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

part 'home_state.freezed.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  error,
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
    @Default(false) bool hasCompletedPoll,
    GlobalTargetEntity? globalTarget,
    MonthlyTargetEntity? monthlyTarget,
    @Default([]) List<HomeTopLeaderEntity> topLeaders,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStatus.loading,
        viewType: HomeViewType.initial,
      );
}
