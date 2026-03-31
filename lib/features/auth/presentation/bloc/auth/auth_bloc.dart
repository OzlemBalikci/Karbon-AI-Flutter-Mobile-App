import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/usecases/checksession_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/logout_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._checkSessionUseCase, this._logoutUseCase)
      : super(const AuthState.loading()) {
    on<AuthAppStarted>(_onAppStarted);
    on<AuthSessionCheckRequested>(_onSessionCheckRequested);
    on<AuthLoggedIn>(_onLoggedIn);
    on<AuthRegistered>(_onRegistered);
    on<AuthSignOutRequested>(_onSignOutRequested);
    on<AuthTokenExpired>(_onTokenExpired);
    on<AuthLoggedOut>(_onLoggedOut);
    on<AuthUserProfileUpdated>(_onUserProfileUpdated);
  }

  final CheckSessionUseCase _checkSessionUseCase;
  final LogoutUseCase _logoutUseCase;

  Future<void> _onAppStarted(
    AuthAppStarted event,
    Emitter<AuthState> emit,
  ) async {
    add(const AuthEvent.sessionCheckRequested());
  }

  Future<void> _onSessionCheckRequested(
    AuthSessionCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final hasSession = await _checkSessionUseCase();
      if (hasSession) {
        emit(const AuthState.authenticated());
      } else {
        emit(const AuthState.unauthenticated());
      }
    } on Exception catch (e) {
      emit(AuthState.authFailure(reason: e.toString()));
    }
  }

  void _onLoggedIn(AuthLoggedIn event, Emitter<AuthState> emit) {
    _emitAuthenticated(event.user, emit);
  }

  void _onRegistered(AuthRegistered event, Emitter<AuthState> emit) {
    _emitAuthenticated(event.user, emit);
  }

  void _emitAuthenticated(AppUser user, Emitter<AuthState> emit) {
    emit(AuthState.authenticated(user: user));
  }

  Future<void> _onSignOutRequested(
    AuthSignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      await _logoutUseCase();
      emit(const AuthState.unauthenticated());
    } on Exception catch (e) {
      emit(AuthState.authFailure(reason: e.toString()));
    }
  }

  Future<void> _onTokenExpired(
    AuthTokenExpired event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      await _logoutUseCase();
    } on Exception {
      // Token zaten geçersiz olabilir; yine de UI tarafında oturumu kapalı göster.
    }
    emit(const AuthState.unauthenticated());
  }

  void _onLoggedOut(AuthLoggedOut event, Emitter<AuthState> emit) {
    emit(const AuthState.unauthenticated());
  }

  void _onUserProfileUpdated(
      AuthUserProfileUpdated event, Emitter<AuthState> emit) {
    _emitAuthenticated(event.user, emit);
  }
}
