import 'package:flutter/material.dart';

class LoginFormController {
  final emailOrTc = TextEditingController();
  final password = TextEditingController();

  final emailOrTcFocus = FocusNode();
  final passwordFocus = FocusNode();

  void dispose() {
    emailOrTc.dispose();
    password.dispose();

    emailOrTcFocus.dispose();
    passwordFocus.dispose();
  }
}
