import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
  authfailure,
}

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.authenticated({
    AppUser? user,
  }) = AuthAuthenticated;

  const factory AuthState.unauthenticated() = AuthUnauthenticated;

  const factory AuthState.authFailure({
    String? reason,
  }) = AuthFailure;

  AuthStatus get status => when(
        loading: () => AuthStatus.initial,
        authenticated: (_) => AuthStatus.authenticated,
        unauthenticated: () => AuthStatus.unauthenticated,
        authFailure: (_) => AuthStatus.authfailure,
      );

  bool get isLoading => status == AuthStatus.initial;
  bool get isAuthenticated => status == AuthStatus.authenticated;
  bool get isUnauthenticated => status == AuthStatus.unauthenticated;
  bool get isAuthFailure => status == AuthStatus.authfailure;
}
