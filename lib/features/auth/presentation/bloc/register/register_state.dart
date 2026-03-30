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
    @Default('') String email,
    @Default('') String identityNumber,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String birthDate,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String phoneNumber,
    @Default(false) bool kvkkApproved,
    String? error,
  }) = _RegisterState;

  factory RegisterState.initial() =>
      const RegisterState(status: RegisterPageStatus.initial);
}
