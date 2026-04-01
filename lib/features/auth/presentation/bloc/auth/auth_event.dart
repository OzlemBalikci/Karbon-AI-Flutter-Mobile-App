import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  /// Uygulama / splash açıldığında: [sessionCheckRequested] zincirlenir.
  const factory AuthEvent.appStarted() = AuthAppStarted;

  /// Yerel depoda geçerli token var mı kontrolü.
  const factory AuthEvent.sessionCheckRequested() = AuthSessionCheckRequested;

  /// İlk açılış (onboarding) tamamlandı; kalıcı işaret + [unauthenticated] akışı.
  const factory AuthEvent.firstOpenCompleted() = AuthFirstOpenCompleted;

  const factory AuthEvent.loggedIn({
    required AppUser user,
  }) = AuthLoggedIn;

  const factory AuthEvent.registered({
    required AppUser user,
  }) = AuthRegistered;

  const factory AuthEvent.signOutRequested() = AuthSignOutRequested;

  const factory AuthEvent.tokenExpired() = AuthTokenExpired;

  const factory AuthEvent.loggedOut() = AuthLoggedOut;
}
