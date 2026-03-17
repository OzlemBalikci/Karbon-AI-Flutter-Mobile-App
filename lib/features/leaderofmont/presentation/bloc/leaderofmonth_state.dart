import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_leader_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/current_user_rank_entity.dart';
import 'package:flutter/foundation.dart';

part 'leaderofmonth_state.freezed.dart';

enum LeaderofmonthStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
abstract class LeaderofmonthState with _$LeaderofmonthState {
  const LeaderofmonthState._();
  const factory LeaderofmonthState({
    @Default(LeaderofmonthStatus.initial) LeaderofmonthStatus status,
    @Default([]) List<LeaderboardLeaderEntity> leaders,
    CurrentUserRankEntity? currentUserRank,
    String? error,
  }) = _LeaderofmonthState;

  factory LeaderofmonthState.initial() => const LeaderofmonthState(
        status: LeaderofmonthStatus.initial,
      );

  bool get isInitial => status == LeaderofmonthStatus.initial;
  bool get isLoading => status == LeaderofmonthStatus.loading;
  bool get isSuccess => status == LeaderofmonthStatus.success;
  bool get isError => status == LeaderofmonthStatus.error;
}
