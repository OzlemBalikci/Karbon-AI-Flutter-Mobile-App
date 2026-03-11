import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_state.dart';
import 'package:karbon/features/home/domain/entities/user_rank_entity.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';

class HomeSelector<T> extends BlocSelector<HomeBloc, HomeState, T> {
  HomeSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class HomeViewTypeSelector extends HomeSelector<HomeViewType> {
  HomeViewTypeSelector({
    super.key,
    required Widget Function(HomeViewType) builder,
  }) : super(
          selector: (state) => state.viewType,
          builder: builder,
        );
}

class LeaderRankSelector extends HomeSelector<List<LeaderboardEntity>> {
  LeaderRankSelector({
    super.key,
    required Widget Function(List<LeaderboardEntity>) builder,
  }) : super(
          selector: (state) => state.leaders,
          builder: (leaders) {
            if (leaders.length < 2) return const SizedBox.shrink();
            return builder(leaders);
          },
        );
}
