import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/domain/entities/app_user.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_state.dart';

class AuthUserSelector extends BlocSelector<AuthBloc, AuthState, AppUser?> {
  AuthUserSelector({
    super.key,
    required super.selector,
    required super.builder,
  });
}

AppUser? selectAuthUser(AuthState state) {
  return state.maybeWhen(
    authenticated: (user) => user,
    orElse: () => null,
  );
}

String? selectAuthReason(AuthState state) {
  return state.maybeWhen(
    authFailure: (reason) => reason,
    orElse: () => null,
  );
}
