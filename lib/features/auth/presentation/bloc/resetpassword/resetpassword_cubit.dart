import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/usecases/resetpassword_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_state.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._resetPasswordUseCase)
      : super(ResetPasswordState.initial());

  final ResetPasswordUseCase _resetPasswordUseCase;

  void resetCodeChanged(String value) => emit(state.copyWith(
        resetCode: value,
        resetCodeError: null,
        error: null,
      ));

  void newPasswordChanged(String value) => emit(state.copyWith(
        newPassword: value,
        newPasswordError: null,
        error: null,
      ));

  void confirmNewPasswordChanged(String value) =>
      emit(state.copyWith(confirmNewPassword: value, error: null));

  Future<void> resetPassword({required String phoneNumber}) async {
    emit(state.copyWith(
      status: ResetPasswordPageStatus.loading,
      resetCodeError: null,
      newPasswordError: null,
      error: null,
    ));

    final result = await _resetPasswordUseCase(
      phoneNumber: phoneNumber,
      resetCode: state.resetCode,
      newPassword: state.newPassword,
      confirmNewPassword: state.confirmNewPassword,
    );

    result.fold(
      (exception) {
        const status = ResetPasswordPageStatus.failure;
        switch (exception) {
          case ValidationException e
              when ResetPasswordUseCase.isOtpError(e.message):
            emit(state.copyWith(status: status, resetCodeError: e.message));
          case ValidationException e:
            emit(state.copyWith(status: status, newPasswordError: e.message));
          case TooManyRequestsException e:
            emit(state.copyWith(
              status: status,
              isRateLimited: true,
              rateLimitMessage: e.message,
            ));
          case AppException e:
            emit(state.copyWith(status: status, error: e.message));
          default:
            emit(state.copyWith(status: status, error: exception.toString()));
        }
      },
      (_) => emit(state.copyWith(status: ResetPasswordPageStatus.success)),
    );
  }
}
