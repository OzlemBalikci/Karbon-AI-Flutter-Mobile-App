import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginPageStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    @Default(LoginPageStatus.initial) LoginPageStatus status,
    @Default(true) bool obscurePassword,
    String? error,
  }) = _LoginState;

  factory LoginState.initial() =>
      const LoginState(status: LoginPageStatus.initial);

  bool get isLoading => status == LoginPageStatus.loading;
  bool get hasError => status == LoginPageStatus.failure && error != null;
}
