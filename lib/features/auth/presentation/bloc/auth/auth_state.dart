import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.sessionChecking() = AuthSessionChecking;

  const factory AuthState.initialUser() = AuthInitialUser;

  const factory AuthState.authenticated({AppUser? user}) = AuthAuthenticated;

  const factory AuthState.unauthenticated() = AuthUnauthenticated;

  const factory AuthState.authFailure({required String reason}) = AuthFailure;

  bool get isSessionChecking =>
      maybeMap(sessionChecking: (_) => true, orElse: () => false);
  bool get isInitialUser =>
      maybeMap(initialUser: (_) => true, orElse: () => false);
  bool get isAuthenticated =>
      maybeMap(authenticated: (_) => true, orElse: () => false);
  bool get isUnauthenticated =>
      maybeMap(unauthenticated: (_) => true, orElse: () => false);
  bool get isFailure => maybeMap(authFailure: (_) => true, orElse: () => false);
}
