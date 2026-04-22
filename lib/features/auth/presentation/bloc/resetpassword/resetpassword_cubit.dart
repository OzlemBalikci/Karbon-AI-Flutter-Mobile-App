import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/usecases/resetpassword_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_state.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._resetPasswordUseCase)
      : super(ResetPasswordState.initial());

  final ResetPasswordUseCase _resetPasswordUseCase;

  Future<void> submitReset({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    if (state.status == ResetPasswordPageStatus.loading) return;
    emit(state.copyWith(
      status: ResetPasswordPageStatus.loading,
      error: null,
    ));

    final result = await _resetPasswordUseCase(
      phoneNumber: phoneNumber.trim(),
      resetCode: resetCode,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );

    await result.fold<Future<void>>(
      (exception) async => emit(state.copyWith(
        status: ResetPasswordPageStatus.failure,
        error: exception.message,
      )),
      (_) async => emit(
        state.copyWith(status: ResetPasswordPageStatus.success),
      ),
    );
  }

  void resetError() {
    if (state.status == ResetPasswordPageStatus.failure) {
      emit(
          state.copyWith(status: ResetPasswordPageStatus.initial, error: null));
    }
  }
}
