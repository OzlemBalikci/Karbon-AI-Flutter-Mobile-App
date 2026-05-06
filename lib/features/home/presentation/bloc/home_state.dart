import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

part 'home_state.freezed.dart';

enum HomeStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default(false) bool hasCompletedPoll,
    GlobalTargetEntity? globalTarget,
    MonthlyTargetEntity? monthlyTarget,
    @Default([]) List<LeaderboardLeaderEntity> topLeaders,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStatus.initial,
      );
}
