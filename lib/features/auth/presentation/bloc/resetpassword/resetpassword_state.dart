import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetpassword_state.freezed.dart';

enum ResetPasswordPageStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const ResetPasswordState._();
  const factory ResetPasswordState({
    @Default(ResetPasswordPageStatus.initial) ResetPasswordPageStatus status,
    @Default('') String resetCode,
    @Default('') String newPassword,
    @Default('') String confirmNewPassword,
    @Default(false) bool isRateLimited,
    @Default('') String rateLimitMessage,
    String? resetCodeError,
    String? newPasswordError,
    String? error,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState();
}
