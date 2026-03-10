import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'login_state.freezed.dart';

enum LoginPageStatus {
  initial,
  loading,
  success,
  failure,
}

enum LoginResultStatus {
  idle,
  loading,
  success,
  failure,
}

@freezed
abstract class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    @Default(LoginPageStatus.initial) LoginPageStatus pagestatus,
    @Default(LoginResultStatus.idle) LoginResultStatus resultStatus,
    @Default(false) bool navigateToForgotPassword,
    String? error,
    AppUser? user,
    @Default(true) bool obscurePassword,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();
}
