import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/usecases/forgotpassword_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this._forgotPasswordUseCase)
      : super(const ForgotPasswordState());

  final ForgotPasswordUseCase _forgotPasswordUseCase;

  void phoneNumberChanged(String value) => emit(state.copyWith(
        phoneNumber: value,
        phoneNumberError: null,
        error: null,
      ));

  Future<void> sendCode() async {
    emit(state.copyWith(
      status: ForgotPasswordPageStatus.loading,
      phoneNumberError: null,
      error: null,
    ));

    final result = await _forgotPasswordUseCase(
      phoneNumber: state.phoneNumber,
    );

    result.fold(
      (exception) {
        if (exception is ValidationException ||
            exception is BadRequestException) {
          emit(state.copyWith(
            status: ForgotPasswordPageStatus.failure,
            phoneNumberError: (exception as AppException).message,
          ));
        } else if (exception is NotFoundException) {
          emit(state.copyWith(
            status: ForgotPasswordPageStatus.failure,
            error: exception.message,
          ));
        } else if (exception is AppException) {
          emit(state.copyWith(
            status: ForgotPasswordPageStatus.failure,
            error: exception.message,
          ));
        } else {
          emit(state.copyWith(
            status: ForgotPasswordPageStatus.failure,
            error: exception.toString(),
          ));
        }
      },
      (_) => emit(state.copyWith(status: ForgotPasswordPageStatus.success)),
    );
  }
}
