import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_event.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';
import '../../../domain/usecases/login_usecase.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(LoginState.initial()) {
    on<LoginEmailOrIdentityNumberChanged>(_onEmailOrIdentityNumberChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginTogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<LoginForgotPasswordPressed>(_onForgotPasswordPressed);
  }

  final LoginUseCase _loginUseCase;

  void _onEmailOrIdentityNumberChanged(
      LoginEmailOrIdentityNumberChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(emailOrIdentityNumber: event.emailOrIdentityNumber));
  }

  void _onPasswordChanged(
      LoginPasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onTogglePasswordVisibility(
      LoginTogglePasswordVisibility event, Emitter<LoginState> emit) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginPageStatus.loading, error: null));
    final result = await _loginUseCase(
      emailOrIdentityNumber: event.emailOrIdentityNumber,
      password: event.password,
    );
    result.fold(
        (e) => emit(state.copyWith(
              status: LoginPageStatus.failure,
              error: e.toString(),
            )),
        (user) => emit(state.copyWith(
              status: LoginPageStatus.success,
              user: user,
            )));
  }

  void _onForgotPasswordPressed(
      LoginForgotPasswordPressed event, Emitter<LoginState> emit) {
    emit(state.copyWith(navigateToForgotPassword: true));
  }
}
