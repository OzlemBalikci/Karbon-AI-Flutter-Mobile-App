import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/usecases/checksession_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/clear_local_session_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/delete_account_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/logout_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._checkSession,
    this._logout,
    this._clearLocalSession,
    this._deleteAccount,
  ) : super(const AuthState.sessionChecking()) {
    on<AuthAppStarted>(_onAppStarted);
    on<AuthSessionCheckRequested>(_onSessionCheckRequested);
    on<AuthLoggedIn>(_onLoggedIn);
    on<AuthRegistered>(_onRegistered);
    on<AuthSignOutRequested>(_onSignOutRequested);
    on<AuthDeleteAccountRequested>(_onDeleteAccountRequested);
    on<AuthTokenExpired>(_onTokenExpired);
  }

  final CheckSessionUseCase _checkSession;
  final LogoutUseCase _logout;
  final ClearLocalSessionUseCase _clearLocalSession;
  final DeleteAccountUseCase _deleteAccount;

  Future<void> _onAppStarted(
    AuthAppStarted event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    add(const AuthEvent.sessionCheckRequested());
  }

  Future<void> _onSessionCheckRequested(
    AuthSessionCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());

    final result = await _checkSession();
    emit(
      result.fold(
        _failureFromException,
        (user) => user != null
            ? AuthState.authenticated(user: user)
            : const AuthState.unauthenticated(),
      ),
    );
  }

  void _onLoggedIn(AuthLoggedIn event, Emitter<AuthState> emit) {
    emit(AuthState.authenticated(user: event.user));
  }

  void _onRegistered(AuthRegistered event, Emitter<AuthState> emit) {
    emit(AuthState.authenticated(user: event.user));
  }

  Future<void> _onSignOutRequested(
    AuthSignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    final logoutResult = await _logout();
    emit(
      logoutResult.fold(
        _failureFromException,
        (_) => const AuthState.unauthenticated(),
      ),
    );
  }

  Future<void> _onDeleteAccountRequested(
    AuthDeleteAccountRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    final result = await _deleteAccount();
    emit(
      result.fold(
        _failureFromException,
        (_) => const AuthState.unauthenticated(),
      ),
    );
  }

  Future<void> _onTokenExpired(
    AuthTokenExpired event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    final cleared = await _clearLocalSession();
    emit(
      cleared.fold(
        _failureFromException,
        (_) => const AuthState.unauthenticated(),
      ),
    );
  }

  // ── Yardımcılar ──────────────────────────────────────────────────────────

  static AuthState _failureFromException(Exception e) {
    if (e is AppException) {
      return AuthState.authFailure(
        reason: e.message,
        failureType: _resolveFailureType(e),
        code: e.statusCode?.toString(),
      );
    }
    return AuthState.authFailure(
      reason: e.toString(),
      failureType: AuthFailureType.unknown,
    );
  }

  static AuthFailureType _resolveFailureType(AppException e) => switch (e) {
        NetworkException() => AuthFailureType.network,
        UnauthorizedException() => AuthFailureType.sessionExpired,
        BadRequestException() ||
        ValidationException() =>
          AuthFailureType.invalidToken,
        _ => AuthFailureType.unknown,
      };
}
