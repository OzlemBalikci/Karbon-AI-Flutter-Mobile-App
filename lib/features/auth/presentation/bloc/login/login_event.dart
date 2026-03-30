import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailOrIdentityNumberChanged({
    required String emailOrIdentityNumber,
  }) = LoginEmailOrIdentityNumberChanged;

  const factory LoginEvent.passwordChanged({
    required String password,
  }) = LoginPasswordChanged;

  const factory LoginEvent.loginButtonPressed({
    required String emailOrIdentityNumber,
    required String password,
  }) = LoginButtonPressed;

  const factory LoginEvent.togglePasswordVisibility() =
      LoginTogglePasswordVisibility;

  const factory LoginEvent.forgotPasswordPressed() = LoginForgotPasswordPressed;
}
