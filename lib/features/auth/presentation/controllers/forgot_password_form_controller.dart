import 'package:flutter/material.dart';

class ForgotPasswordFormController {
  final phoneNumber = TextEditingController();

  void dispose() {
    phoneNumber.dispose();
  }
}
