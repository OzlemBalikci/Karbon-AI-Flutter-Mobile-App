import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/domain/usecases/register_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/register/register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerUseCase, this._authBloc, this._authLaunchLocal)
      : super(RegisterState.initial());

  final RegisterUseCase _registerUseCase;
  final AuthBloc _authBloc;
  final AuthLaunchLocal _authLaunchLocal;

  void kvkkApprovedChanged(bool value) =>
      emit(state.copyWith(kvkkApproved: value, error: null));

  Future<void> register({
    required String email,
    required String identityNumber,
    required String firstName,
    required String lastName,
    required String birthDate,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
    required bool isKvkkApproved,
  }) async {
    if (state.isLoading) return;
    emit(state.copyWith(status: RegisterPageStatus.loading, error: null));

    final result = await _registerUseCase(
      email: email,
      identityNumber: identityNumber,
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
      phoneNumber: phoneNumber,
      password: password,
      confirmPassword: confirmPassword,
      isKvkkApproved: isKvkkApproved,
    );

    await result.fold<Future<void>>(
      (failure) async => emit(state.copyWith(
        status: RegisterPageStatus.failure,
        error: failure.message,
      )),
      (user) async {
        await _authLaunchLocal.setCustomFirstOpenCompleted();
        _authBloc.add(AuthEvent.registered(user: user));
        emit(state.copyWith(status: RegisterPageStatus.success, error: null));
      },
    );
  }

  void resetError() {
    if (state.hasError) {
      emit(state.copyWith(status: RegisterPageStatus.initial, error: null));
    }
  }
}
