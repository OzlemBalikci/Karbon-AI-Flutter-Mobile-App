import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  /// Uygulama / splash açıldığında: [sessionCheckRequested] zincirlenir.
  const factory AuthEvent.appStarted() = AuthAppStarted;

  /// Yerel depoda geçerli token var mı kontrolü.
  const factory AuthEvent.sessionCheckRequested() = AuthSessionCheckRequested;

  /// POST /login başarılı.
  const factory AuthEvent.loggedIn({
    required AppUser user,
  }) = AuthLoggedIn;

  /// POST /register (+ otomatik login) başarılı.
  const factory AuthEvent.registered({
    required AppUser user,
  }) = AuthRegistered;

  /// Çıkış: repository üzerinden token temizlenir.
  const factory AuthEvent.signOutRequested() = AuthSignOutRequested;

  /// Token süresi doldu veya 401 — yerel oturum temizlenir.
  const factory AuthEvent.tokenExpired() = AuthTokenExpired;

  /// Sadece state: unauthenticated (repo çağrısı olmadan).
  const factory AuthEvent.loggedOut() = AuthLoggedOut;

  /// User profile updated
  const factory AuthEvent.userProfileUpdated({
    required AppUser user,
  }) = AuthUserProfileUpdated;
}
