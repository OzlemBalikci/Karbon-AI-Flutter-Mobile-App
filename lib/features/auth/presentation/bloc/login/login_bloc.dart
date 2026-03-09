import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_event.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';
import '../../../domain/usecases/login_usecase.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(LoginState.initial()) {
    on<LoginTogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  final LoginUseCase _loginUseCase;

  void _onTogglePasswordVisibility(
    LoginTogglePasswordVisibility event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(obscurePassword: !state.obscurePassword));
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: LoginStatus.loading));
    final result = await _loginUseCase(
      email: event.email,
      password: event.password,
    );
    result.fold(
        (e) => emit(state.copyWith(
              status: LoginStatus.failure,
              error: e.toString(),
            )),
        (user) => emit(state.copyWith(
              status: LoginStatus.success,
              user: user,
            )));
  }
}
