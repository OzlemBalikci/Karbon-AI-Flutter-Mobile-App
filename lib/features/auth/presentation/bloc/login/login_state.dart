import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'login_state.freezed.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
    @Default(LoginStatus.initial) LoginStatus status,
    String? error,
    AppUser? user,
    @Default(true) bool obscurePassword,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();
}
