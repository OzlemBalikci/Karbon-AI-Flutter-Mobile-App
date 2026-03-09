import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';
import 'package:karbon/core/constants/assets.gen.dart';

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
    required Widget Function(bool obscure, Widget icon) builder,
  }) : super(
          selector: (state) => state.obscurePassword,
          builder: (obscure) => builder(
            obscure,
            obscure
                ? Assets.icons.eyeSlashClosed.svg()
                : Assets.icons.eyeSlashOpened.svg(),
          ),
        );
}

//class LoginNavigateToForgotPasswordSelector extends LoginSelector<bool> {
  //LoginNavigateToForgotPasswordSelector({
  //  super.key,
  //  required Widget Function(bool navigateToForgotPassword) builder,
  //}) : super(
  //    selector: (state) => state.navigateToForgotPassword,
  //    builder: (navigateToForgotPassword) => builder(navigateToForgotPassword),
  //  );
//}
