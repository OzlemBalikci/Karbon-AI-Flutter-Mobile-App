import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotpassword_event.freezed.dart';

@freezed
sealed class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.phoneNumberChanged({
    required String phoneNumber,
  }) = ForgotPasswordPhoneNumberChanged;

  const factory ForgotPasswordEvent.sendCodePressed() =
      ForgotPasswordSendCodePressed;
}
