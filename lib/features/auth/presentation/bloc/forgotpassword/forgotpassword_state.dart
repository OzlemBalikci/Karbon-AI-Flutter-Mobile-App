import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotpassword_state.freezed.dart';

enum ForgotPasswordPageStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  const ForgotPasswordState._();
  const factory ForgotPasswordState({
    @Default(ForgotPasswordPageStatus.initial) ForgotPasswordPageStatus status,
    String? error,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => const ForgotPasswordState();
}
