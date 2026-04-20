import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:flutter/foundation.dart';

part 'leaderofmonth_state.freezed.dart';

enum LeaderofmonthStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class LeaderofmonthState with _$LeaderofmonthState {
  const LeaderofmonthState._();
  const factory LeaderofmonthState({
    @Default(LeaderofmonthStatus.initial) LeaderofmonthStatus status,
    @Default([]) List<LeaderboardLeaderEntity> leaders,
    @Default([]) List<LeaderboardLeaderEntity> podium,
    @Default(3) int podiumSize,
    CurrentUserRankEntity? currentUserRank,
    String? error,
  }) = _LeaderofmonthState;

  factory LeaderofmonthState.initial() => const LeaderofmonthState(
        status: LeaderofmonthStatus.initial,
      );
}
