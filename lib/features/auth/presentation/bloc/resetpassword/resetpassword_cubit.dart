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

  Future<void> submitReset({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
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
        error: exception is AppException
            ? exception.message
            : exception.toString(),
      )),
      (_) async => emit(
        state.copyWith(status: ResetPasswordPageStatus.success),
      ),
    );
  }
}
