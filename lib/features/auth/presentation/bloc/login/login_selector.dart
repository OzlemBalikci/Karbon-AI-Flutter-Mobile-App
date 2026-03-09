import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';

class LoginSelector<T> extends BlocSelector<LoginBloc, LoginState, T> {
  LoginSelector({
    super.key,
    required T Function(LoginState) selector,
    required Widget Function(T value) builder,
  }) : super(
          selector: selector,
          builder: (_, value) => builder(value),
        );
}

class LoginObscurePasswordSelector extends LoginSelector<bool> {
  LoginObscurePasswordSelector({
    super.key,
    required Widget Function(bool obscure) builder,
  }) : super(
          selector: (state) => state.obscurePassword,
          builder: builder,
        );
}
