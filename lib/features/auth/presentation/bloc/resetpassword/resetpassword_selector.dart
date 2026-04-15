import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_state.dart';

class ResetPasswordSelector<T>
    extends BlocSelector<ResetPasswordCubit, ResetPasswordState, T> {
  ResetPasswordSelector({
    super.key,
    required T Function(ResetPasswordState) selector,
    required Widget Function(T value) builder,
  }) : super(
          selector: selector,
          builder: (_, value) => builder(value),
        );
}

class ResetPasswordStatusSelector
    extends ResetPasswordSelector<ResetPasswordPageStatus> {
  ResetPasswordStatusSelector({
    super.key,
    required super.builder,
  }) : super(
          selector: (state) => state.status,
        );
}
