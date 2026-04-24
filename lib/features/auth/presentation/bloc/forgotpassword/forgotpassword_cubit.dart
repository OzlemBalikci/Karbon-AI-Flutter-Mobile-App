import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/domain/usecases/forgotpassword_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit(this._forgotPasswordUseCase)
      : super(const ForgotPasswordState());

  final ForgotPasswordUseCase _forgotPasswordUseCase;

  Future<void> sendCode({required String phoneNumber}) async {
    if (state.isLoading) return;
    emit(state.copyWith(
      status: ForgotPasswordPageStatus.loading,
      error: null,
    ));

    final result = await _forgotPasswordUseCase(
      phoneNumber: phoneNumber,
    );

    await result.fold<Future<void>>(
      (exception) async => emit(state.copyWith(
        status: ForgotPasswordPageStatus.failure,
        error: exception.message,
      )),
      (_) async => emit(
        state.copyWith(status: ForgotPasswordPageStatus.success, error: null),
      ),
    );
  }

  void resetError() {
    if (state.hasError) {
      emit(state.copyWith(
          status: ForgotPasswordPageStatus.initial, error: null));
    }
  }
}
