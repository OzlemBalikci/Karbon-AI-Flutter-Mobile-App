import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = AuthAppStarted;
  const factory AuthEvent.sessionCheckRequested() = AuthSessionCheckRequested;
  const factory AuthEvent.loggedIn({
    required AppUser user,
  }) = AuthLoggedIn;
  const factory AuthEvent.registered({
    required AppUser user,
  }) = AuthRegistered;
  const factory AuthEvent.signOutRequested() = AuthSignOutRequested;
  const factory AuthEvent.tokenExpired() = AuthTokenExpired;
}
