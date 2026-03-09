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

class HomeStatusSelector extends HomeSelector<HomeStatus> {
  HomeStatusSelector({super.key, required super.builder})
      : super(selector: (state) => state.status);
}

class HomeIsLoadingSelector extends HomeSelector<bool> {
  HomeIsLoadingSelector({super.key, required super.builder})
      : super(selector: (state) => state.isLoading);
}

class HomeIsInitialViewSelector extends HomeSelector<bool> {
  HomeIsInitialViewSelector({super.key, required super.builder})
      : super(selector: (state) => state.isInitialView);
}

class HomeIsMainViewSelector extends HomeSelector<bool> {
  HomeIsMainViewSelector({super.key, required super.builder})
      : super(selector: (state) => state.isMainView);
}

class HomeTotalCarbonSelector extends HomeSelector<double?> {
  HomeTotalCarbonSelector({super.key, required super.builder})
      : super(selector: (state) => state.totalCarbon);
}

class HomeSavedCarbonSelector extends HomeSelector<double?> {
  HomeSavedCarbonSelector({super.key, required super.builder})
      : super(selector: (state) => state.savedCarbon);
}

class HomeHasErrorSelector extends HomeSelector<bool> {
  HomeHasErrorSelector({super.key, required super.builder})
      : super(selector: (state) => state.hasError);
}
