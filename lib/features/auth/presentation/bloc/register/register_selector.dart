import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/register/register_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/register/register_state.dart';

class RegisterSelector<T>
    extends BlocSelector<RegisterCubit, RegisterState, T> {
  RegisterSelector({
    super.key,
    required T Function(RegisterState) selector,
    required Widget Function(T value) builder,
  }) : super(
          selector: selector,
          builder: (_, value) => builder(value),
        );
}
