import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_state.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_bloc.dart';

class LeaderofmonthSelector<T>
    extends BlocSelector<LeaderofmonthBloc, LeaderofmonthState, T> {
  LeaderofmonthSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class LeaderofmonthStatusSelector
    extends LeaderofmonthSelector<LeaderofmonthStatus> {
  LeaderofmonthStatusSelector(Widget Function(LeaderofmonthStatus) builder,
      {super.key})
      : super(
          selector: (state) => state.status,
          builder: builder,
        );
}

/// Hata metni (popup veya inline için).
class LeaderofmonthErrorSelector extends LeaderofmonthSelector<String?> {
  LeaderofmonthErrorSelector({
    super.key,
    required Widget Function(String error) builder,
  }) : super(
          selector: (state) => state.error,
          builder: (error) => builder(error ?? 'Bir hata oluştu'),
        );
}

/// Lider listesini LeaderofmonthBloc'tan seçer.
/// Home ve Leaderofmonth sayfaları tarafından kullanılır.
class LeaderRankSelector
    extends LeaderofmonthSelector<List<LeaderboardLeaderEntity>> {
  LeaderRankSelector({
    super.key,
    required Widget Function(List<LeaderboardLeaderEntity>) builder,
  }) : super(
          selector: (state) => [...state.podium, ...state.leaders],
          builder: builder,
        );
}

/// Kullanıcının sıralamasını LeaderofmonthBloc'tan seçer.
class CurrentUserRankSelector
    extends LeaderofmonthSelector<CurrentUserRankEntity?> {
  CurrentUserRankSelector({
    super.key,
    required Widget Function(CurrentUserRankEntity?) builder,
  }) : super(
          selector: (state) => state.currentUserRank,
          builder: builder,
        );
}
