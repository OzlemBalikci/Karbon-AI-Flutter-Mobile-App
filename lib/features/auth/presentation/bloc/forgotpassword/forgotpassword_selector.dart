import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';

class ForgotPasswordSelector<T> extends BlocSelector<ForgotPasswordCubit, ForgotPasswordState, T> {
  ForgotPasswordSelector({
    super.key,
    required T Function(ForgotPasswordState) selector,
    required Widget Function(T value) builder,
  }) : super(
          selector: selector,
          builder: (_, value) => builder(value),
        );
}
