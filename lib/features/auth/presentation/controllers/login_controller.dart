import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_cubit.dart';

class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void onLoginPressed(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    cubit.emailOrIdentityNumberChanged(emailController.text.trim());
    cubit.passwordChanged(passwordController.text);
    cubit.login();
  }
}
