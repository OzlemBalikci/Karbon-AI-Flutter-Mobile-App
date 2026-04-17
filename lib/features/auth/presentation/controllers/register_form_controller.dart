import 'package:flutter/material.dart';

class RegisterFormController {
  final email = TextEditingController();
  final identityNumber = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final birthDate = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final phoneNumber = TextEditingController();

  final emailFocus = FocusNode();
  final identityNumberFocus = FocusNode();
  final firstNameFocus = FocusNode();
  final lastNameFocus = FocusNode();
  final birthDateFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final phoneNumberFocus = FocusNode();

  void dispose() {
    email.dispose();
    identityNumber.dispose();
    firstName.dispose();
    lastName.dispose();
    birthDate.dispose();
    password.dispose();
    confirmPassword.dispose();
    phoneNumber.dispose();

    emailFocus.dispose();
    identityNumberFocus.dispose();
    firstNameFocus.dispose();
    lastNameFocus.dispose();
    birthDateFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();
    phoneNumberFocus.dispose();
  }
}
