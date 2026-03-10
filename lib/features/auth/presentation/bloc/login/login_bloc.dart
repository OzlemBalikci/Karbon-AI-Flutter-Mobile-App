import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_event.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';
import '../../../domain/usecases/login_usecase.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(LoginState.initial()) {
    on<LoginPageStarted>(_onLoginPageStarted);
    on<LoginTogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<LoginForgotPasswordPressed>(_onForgotPasswordPressed);
  }

  final LoginUseCase _loginUseCase;

  Future<void> _onLoginPageStarted(
      LoginPageStarted event, Emitter<LoginState> emit) async {
    emit(state.copyWith(pagestatus: LoginPageStatus.loading));
    emit(state.copyWith(pagestatus: LoginPageStatus.success));
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(resultStatus: LoginResultStatus.loading, error: null));
    final result = await _loginUseCase(
      emailOrIdentityNumber: event.emailOrIdentityNumber,
      password: event.password,
    );
    result.fold(
        (e) => emit(state.copyWith(
              resultStatus: LoginResultStatus.failure,
              error: e.toString(),
            )),
        (user) => emit(state.copyWith(
              resultStatus: LoginResultStatus.success,
              user: user,
            )));
  }

  void _onTogglePasswordVisibility(
      LoginTogglePasswordVisibility event, Emitter<LoginState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  void _onForgotPasswordPressed(
      LoginForgotPasswordPressed event, Emitter<LoginState> emit) {
    emit(state.copyWith(navigateToForgotPassword: true));
  }
}
