import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
sealed class RegisterEvent with _$RegisterEvent {
  // Alan değişim eventleri — reactive validasyon için
  const factory RegisterEvent.firstNameChanged({
    required String firstName,
  }) = RegisterFirstNameChanged;

  const factory RegisterEvent.lastNameChanged({
    required String lastName,
  }) = RegisterLastNameChanged;

  const factory RegisterEvent.identityNumberChanged({
    required String identityNumber,
  }) = RegisterIdentityNumberChanged;

  const factory RegisterEvent.emailChanged({
    required String email,
  }) = RegisterEmailChanged;

  const factory RegisterEvent.birthDateChanged({
    required DateTime birthDate,
  }) = RegisterBirthDateChanged;

  const factory RegisterEvent.passwordChanged({
    required String password,
  }) = RegisterPasswordChanged;

  const factory RegisterEvent.confirmPasswordChanged({
    required String confirmPassword,
  }) = RegisterConfirmPasswordChanged;

  const factory RegisterEvent.phoneNumberChanged({
    required String phoneNumber,
  }) = RegisterPhoneNumberChanged;

  const factory RegisterEvent.kvkkApprovedChanged({
    required bool kvkkApproved,
  }) = RegisterKvkkApprovedChanged;

  const factory RegisterEvent.registerButtonPressed() = RegisterButtonPressed;
}
