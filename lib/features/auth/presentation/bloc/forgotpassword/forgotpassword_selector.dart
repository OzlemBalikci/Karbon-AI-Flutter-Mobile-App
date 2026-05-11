import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';

class ForgotPasswordSelector<T>
    extends BlocSelector<ForgotPasswordCubit, ForgotPasswordState, T> {
  ForgotPasswordSelector({
    super.key,
    required super.selector,
    required Widget Function(T value) builder,
  }) : super(builder: (_, value) => builder(value));
}
