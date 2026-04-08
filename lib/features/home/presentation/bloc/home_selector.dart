import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_state.dart';

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
