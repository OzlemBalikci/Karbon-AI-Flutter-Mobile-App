import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/domain/usecases/login_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUseCase, this._authLaunchLocal)
      : super(LoginState.initial());

  final LoginUseCase _loginUseCase;
  final AuthLaunchLocal _authLaunchLocal;

  void emailOrIdentityNumberChanged(String value) =>
      emit(state.copyWith(emailOrIdentityNumber: value, error: null));

  void passwordChanged(String value) =>
      emit(state.copyWith(password: value, error: null));

  void togglePasswordVisibility() =>
      emit(state.copyWith(obscurePassword: !state.obscurePassword));

  void forgotPasswordPressed() =>
      emit(state.copyWith(navigateToForgotPassword: true));

  Future<void> login() async {
    emit(state.copyWith(status: LoginPageStatus.loading, error: null));
    final result = await _loginUseCase(
      emailOrIdentityNumber: state.emailOrIdentityNumber,
      password: state.password,
    );
    await result.fold<Future<void>>(
      (e) async => emit(state.copyWith(
        status: LoginPageStatus.failure,
        error: e.toString(),
      )),
      (user) async {
        await _authLaunchLocal.setCustomFirstOpenCompleted();
        emit(state.copyWith(
          status: LoginPageStatus.success,
          user: user,
        ));
      },
    );
  }
}
