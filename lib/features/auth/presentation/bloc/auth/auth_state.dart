import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {
  checking,
  authenticated,
  unauthenticated,
  failure,
}

enum AuthFailureType {
  sessionExpired,
  invalidToken,
  network,
  unknown,
}

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.sessionChecking() = AuthSessionChecking;
  const factory AuthState.authenticated({required AppUser user}) =
      AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.authFailure({
    required String reason,
    required AuthFailureType failureType,
    String? code,
  }) = AuthFailure;

  AppUser? get userOrNull => maybeMap(
        authenticated: (s) => s.user,
        orElse: () => null,
      );

  AuthFailureType? get failureTypeOrNull => maybeMap(
        authFailure: (s) => s.failureType,
        orElse: () => null,
      );

  AuthStatus get status => when(
        sessionChecking: () => AuthStatus.checking,
        authenticated: (user) => AuthStatus.authenticated,
        unauthenticated: () => AuthStatus.unauthenticated,
        authFailure: (reason, failureType, code) => AuthStatus.failure,
      );

  bool get isSessionChecking => this is AuthSessionChecking;
  bool get isAuthenticated => this is AuthAuthenticated;
  bool get isUnauthenticated => this is AuthUnauthenticated;
  bool get isFailure => this is AuthFailure;
}
