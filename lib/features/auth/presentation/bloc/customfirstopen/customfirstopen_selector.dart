import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/customfirstopen/customfirstopen_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/customfirstopen/customfirstopen_state.dart';

class CustomFirstOpenSelector<T>
    extends BlocSelector<CustomFirstOpenCubit, CustomFirstOpenState, T> {
  CustomFirstOpenSelector({
    super.key,
    required super.selector,
    required Widget Function(T value) builder,
  }) : super(builder: (_, value) => builder(value));
}

class CustomFirstOpenStatusSelector
    extends CustomFirstOpenSelector<CustomFirstOpenStatus> {
  CustomFirstOpenStatusSelector({
    super.key,
    required super.builder,
  }) : super(
          selector: (state) => state.status,
        );
}
