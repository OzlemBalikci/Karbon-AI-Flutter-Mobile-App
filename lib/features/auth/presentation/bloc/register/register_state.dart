import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

enum RegisterPageStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState({
    @Default(RegisterPageStatus.initial) RegisterPageStatus status,
    @Default(false) bool kvkkApproved,
    String? error,
  }) = _RegisterState;

  factory RegisterState.initial() =>
      const RegisterState(status: RegisterPageStatus.initial);

  bool get isLoading => status == RegisterPageStatus.loading;
  bool get hasError => status == RegisterPageStatus.failure && error != null;
}
