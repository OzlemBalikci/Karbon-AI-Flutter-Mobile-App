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

class HomeViewTypeSelector extends HomeSelector<HomeViewType> {
  HomeViewTypeSelector({
    super.key,
    required Widget Function(HomeViewType) builder,
  }) : super(
          selector: (state) => state.viewType,
          builder: builder,
        );
}

class HomeStatusSelector extends HomeSelector<HomeStatus> {
  HomeStatusSelector({
    super.key,
    required Widget Function() onLoading,
    required Widget Function(String error) onError,
    required Widget Function() onSuccess,
    Widget Function()? onInitial,
  }) : super(
          selector: (state) => state.status,
          builder: (status) => switch (status) {
            HomeStatus.initial => onInitial?.call() ?? const SizedBox.shrink(),
            HomeStatus.loading => onLoading(),
            HomeStatus.error => BlocSelector<HomeBloc, HomeState, String?>(
                selector: (state) => state.error,
                builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
              ),
            HomeStatus.success => onSuccess(),
          },
        );
}

/// `topLeaders` alanını `LeaderCardRow` / lider kartlarıyla uyumlu tipe map eder.
class HomeTopLeadersSelector
    extends HomeSelector<List<LeaderboardLeaderEntity>> {
  HomeTopLeadersSelector({
    super.key,
    required Widget Function(List<LeaderboardLeaderEntity> leaders) builder,
  }) : super(
          selector: (state) => state.topLeaders
              .map(
                (e) => LeaderboardLeaderEntity(
                  rank: e.rank,
                  fullName: e.fullName,
                  treeCount: e.treeCount,
                  isCurrentUser: e.isCurrentUser,
                ),
              )
              .toList(),
          builder: builder,
        );
}
