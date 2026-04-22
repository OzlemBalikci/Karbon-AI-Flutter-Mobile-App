import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/usecases/login_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase, this._authBloc) : super(LoginState.initial());

  final LoginUseCase _loginUseCase;
  final AuthBloc _authBloc;

  void togglePasswordVisibility() =>
      emit(state.copyWith(obscurePassword: !state.obscurePassword));

  Future<void> login({
    required String emailOrIdentityNumber,
    required String password,
  }) async {
    if (state.status == LoginPageStatus.loading) return;
    emit(state.copyWith(status: LoginPageStatus.loading, error: null));

    final result = await _loginUseCase(
      emailOrIdentityNumber: emailOrIdentityNumber.trim(),
      password: password,
    );

    await result.fold<Future<void>>(
      (failure) async => emit(state.copyWith(
        status: LoginPageStatus.failure,
        error: failure.message,
      )),
      (user) async {
        _authBloc.add(AuthEvent.loggedIn(user: user));
        emit(state.copyWith(status: LoginPageStatus.success, error: null));
      },
    );
  }

  void resetError() {
    if (state.status == LoginPageStatus.failure) {
      emit(state.copyWith(status: LoginPageStatus.initial, error: null));
    }
  }
}
