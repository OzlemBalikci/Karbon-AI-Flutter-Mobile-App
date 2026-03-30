import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/usecases/register_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';

import 'register_event.dart';
import 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(
    this._registerUseCase,
    this._authBloc,
  ) : super(RegisterState.initial()) {
    on<RegisterFirstNameChanged>(_onFirstNameChanged);
    on<RegisterLastNameChanged>(_onLastNameChanged);
    on<RegisterIdentityNumberChanged>(_onIdentityNumberChanged);
    on<RegisterEmailChanged>(_onEmailChanged);
    on<RegisterBirthDateChanged>(_onBirthDateChanged);
    on<RegisterPasswordChanged>(_onPasswordChanged);
    on<RegisterConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<RegisterPhoneNumberChanged>(_onPhoneNumberChanged);
    on<RegisterKvkkApprovedChanged>(_onKvkkApprovedChanged);
    on<RegisterButtonPressed>(_onRegisterButtonPressed);
  }

  final RegisterUseCase _registerUseCase;
  final AuthBloc _authBloc;

  void _onFirstNameChanged(
    RegisterFirstNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(firstName: event.firstName, error: null));
  }

  void _onLastNameChanged(
    RegisterLastNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(lastName: event.lastName, error: null));
  }

  void _onIdentityNumberChanged(
    RegisterIdentityNumberChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(identityNumber: event.identityNumber, error: null));
  }

  void _onEmailChanged(
    RegisterEmailChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(email: event.email, error: null));
  }

  void _onBirthDateChanged(
    RegisterBirthDateChanged event,
    Emitter<RegisterState> emit,
  ) {
    final iso = event.birthDate.toUtc().toIso8601String();
    emit(state.copyWith(birthDate: iso, error: null));
  }

  void _onPasswordChanged(
    RegisterPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(password: event.password, error: null));
  }

  void _onConfirmPasswordChanged(
    RegisterConfirmPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(confirmPassword: event.confirmPassword, error: null));
  }

  void _onPhoneNumberChanged(
    RegisterPhoneNumberChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(phoneNumber: event.phoneNumber, error: null));
  }

  void _onKvkkApprovedChanged(
    RegisterKvkkApprovedChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(kvkkApproved: event.kvkkApproved, error: null));
  }

  Future<void> _onRegisterButtonPressed(
    RegisterButtonPressed event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(
      status: RegisterPageStatus.loading,
      error: null,
    ));

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
      (failure) async {
        emit(state.copyWith(
          status: RegisterPageStatus.failure,
          error: failure.toString(),
        ));
      },
      (user) async {
        _authBloc.add(AuthEvent.registered(user: user));
        emit(state.copyWith(
          status: RegisterPageStatus.success,
          error: null,
        ));
      },
    );
  }
}
