import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/usecases/checksession_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/logout_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._checkSession, this._logout)
      : super(const AuthState.sessionChecking()) {
    on<AuthAppStarted>(_onAppStarted);
    on<AuthSessionCheckRequested>(_onSessionCheckRequested);
    on<AuthFirstOpenCompleted>(_onFirstOpenCompleted);
    on<AuthLoggedIn>(_onLoggedIn);
    on<AuthRegistered>(_onRegistered);
    on<AuthSignOutRequested>(_onSignOutRequested);
    on<AuthTokenExpired>(_onTokenExpired);
    on<AuthLoggedOut>(_onLoggedOut);
  }

  final CheckSessionUseCase _checkSession;
  final LogoutUseCase _logout;

  Future<void> _onAppStarted(
    AuthAppStarted event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    add(const AuthEvent.sessionCheckRequested());
  }

  /// Token varsa profili çeker; yoksa [unauthenticated] emit eder.
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

  /// Onboarding bitti; oturumu kapalı kabul et.
  void _onFirstOpenCompleted(
    AuthFirstOpenCompleted event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthState.unauthenticated());
  }

  /// Login use-case başarılıysa presentation katmanı bu event'i tetikler.
  void _onLoggedIn(AuthLoggedIn event, Emitter<AuthState> emit) {
    emit(AuthState.authenticated(user: event.user));
  }

  /// Register use-case başarılıysa presentation katmanı bu event'i tetikler.
  void _onRegistered(AuthRegistered event, Emitter<AuthState> emit) {
    emit(AuthState.authenticated(user: event.user));
  }

  /// Kullanıcı oturumu manuel kapatır; başarısız olursa hata state'i yayar.
  Future<void> _onSignOutRequested(
    AuthSignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    try {
      await _logout();
      emit(const AuthState.unauthenticated());
    } on AppException catch (e) {
      emit(_failureFromException(e));
    } on Exception catch (e) {
      emit(_failureFromException(e));
    }
  }

  /// Token sunucu tarafında geçersiz kılındı; lokal oturum temizlenir.
  /// Logout hatası yutulur — token zaten geçersiz, kullanıcıyı logout'a almak yeterli.
  Future<void> _onTokenExpired(
    AuthTokenExpired event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.sessionChecking());
    try {
      await _logout();
    } on AppException {
      // Kasıtlı: token zaten geçersiz; yerel temizlik yeterli.
    } on Exception {
      // Kasıtlı: ağ hatası vb. durumda da UI'da oturumu kapalı göster.
    }
    emit(const AuthState.unauthenticated());
  }

  /// Auth dışı bir akıştan (örn. logout popup) oturum kapatıldığında.
  void _onLoggedOut(AuthLoggedOut event, Emitter<AuthState> emit) {
    emit(const AuthState.unauthenticated());
  }

  // ── Yardımcılar ──────────────────────────────────────────────────────────

  /// [Exception]'ı [AuthState.authFailure]'a dönüştürür.
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

  /// [AppException] alt tipini [AuthFailureType]'a eşler.
  static AuthFailureType _resolveFailureType(AppException e) => switch (e) {
        NetworkException() => AuthFailureType.network,
        UnauthorizedException() => AuthFailureType.sessionExpired,
        BadRequestException() ||
        ValidationException() =>
          AuthFailureType.invalidToken,
        _ => AuthFailureType.unknown,
      };
}
