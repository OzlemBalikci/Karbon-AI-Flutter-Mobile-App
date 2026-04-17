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
    String? error,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState();

  bool get isLoading => status == ResetPasswordPageStatus.loading;
  bool get hasError =>
      status == ResetPasswordPageStatus.failure && error != null;
}
