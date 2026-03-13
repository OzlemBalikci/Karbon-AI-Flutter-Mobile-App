import 'package:flutter/material.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void onLoginPressed(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                context.text.login_error_empty_fields,
                style: context.typographiesSp.bodyMediumSmall
                    .copyWith(color: context.colors.textBlack)),
            backgroundColor: context.colors.textOnQuestion),
      );
      return;
    }

    context.read<LoginBloc>().add(LoginEvent.loginButtonPressed(
        emailOrIdentityNumber: email, password: password));
  }
}
