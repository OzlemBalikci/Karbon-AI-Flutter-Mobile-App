import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_state.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

class HomeSelector<T> extends BlocSelector<HomeBloc, HomeState, T> {
  HomeSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

typedef HomeShellSnapshot = ({
  HomeStatus status,
  String? error,
  bool hasCompletedPoll,
  bool showLoadingSpinner,
});

HomeShellSnapshot selectHomeShellSnapshot(HomeState s) {
  final hasCached = s.globalTarget != null ||
      s.monthlyTarget != null ||
      s.topLeaders.isNotEmpty;
  return (
    status: s.status,
    error: s.error,
    hasCompletedPoll: s.hasCompletedPoll,
    showLoadingSpinner: s.status == HomeStatus.loading && !hasCached,
  );
}

class HomeShellSelector extends HomeSelector<HomeShellSnapshot> {
  HomeShellSelector({
    super.key,
    required Widget Function(HomeShellSnapshot snap) builder,
  }) : super(
          selector: selectHomeShellSnapshot,
          builder: builder,
        );
}

class HomeStatusSelector extends HomeSelector<HomeStatus> {
  HomeStatusSelector(Widget Function(HomeStatus) builder, {super.key})
      : super(
          selector: (state) => state.status,
          builder: builder,
        );
}

class HomeTopLeadersSelector
    extends HomeSelector<List<LeaderboardLeaderEntity>> {
  HomeTopLeadersSelector({
    super.key,
    required Widget Function(List<LeaderboardLeaderEntity> leaders) builder,
  }) : super(
          selector: (state) => state.topLeaders,
          builder: builder,
        );
}
