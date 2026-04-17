import 'package:flutter/material.dart';

class ResetPasswordFormController {
  final pin = TextEditingController();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  final newPasswordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final pinFocusNode = FocusNode();

  void dispose() {
    pin.dispose();
    newPassword.dispose();
    confirmPassword.dispose();

    pinFocusNode.dispose();
    newPasswordFocus.dispose();
    confirmPasswordFocus.dispose();
  }
}
