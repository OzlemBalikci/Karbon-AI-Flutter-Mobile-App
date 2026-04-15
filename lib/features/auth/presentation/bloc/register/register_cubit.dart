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

  void firstNameChanged(String value) =>
      emit(state.copyWith(firstName: value, error: null));

  void lastNameChanged(String value) =>
      emit(state.copyWith(lastName: value, error: null));

  void identityNumberChanged(String value) =>
      emit(state.copyWith(identityNumber: value, error: null));

  void emailChanged(String value) =>
      emit(state.copyWith(email: value, error: null));

  void birthDateChanged(DateTime date) => emit(
      state.copyWith(birthDate: date.toUtc().toIso8601String(), error: null));

  void passwordChanged(String value) =>
      emit(state.copyWith(password: value, error: null));

  void confirmPasswordChanged(String value) =>
      emit(state.copyWith(confirmPassword: value, error: null));

  void phoneNumberChanged(String value) =>
      emit(state.copyWith(phoneNumber: value, error: null));

  void kvkkApprovedChanged(bool value) =>
      emit(state.copyWith(kvkkApproved: value, error: null));

  Future<void> register() async {
    emit(state.copyWith(status: RegisterPageStatus.loading, error: null));

    final result = await _registerUseCase(
      email: state.email,
      identityNumber: state.identityNumber,
      firstName: state.firstName,
      lastName: state.lastName,
      birthDate: state.birthDate,
      phoneNumber: state.phoneNumber,
      password: state.password,
      confirmPassword: state.confirmPassword,
      isKvkkApproved: state.kvkkApproved,
    );

    await result.fold<Future<void>>(
      (failure) async => emit(state.copyWith(
        status: RegisterPageStatus.failure,
        error: failure.toString(),
      )),
      (user) async {
        await _authLaunchLocal.setCustomFirstOpenCompleted();
        _authBloc.add(AuthEvent.registered(user: user));
        emit(state.copyWith(status: RegisterPageStatus.success, error: null));
      },
    );
  }
}
