import 'package:bloc/bloc.dart';
import 'package:karbon/core/errors/exceptions.dart';
import 'package:karbon/features/auth/domain/usecases/forgotpassword_usecase.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_event.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordUseCase _forgotPasswordUseCase;

  ForgotPasswordBloc({
    required ForgotPasswordUseCase forgotPasswordUseCase,
  })  : _forgotPasswordUseCase = forgotPasswordUseCase,
        super(const ForgotPasswordState()) {
    on<ForgotPasswordPhoneNumberChanged>(_onPhoneNumberChanged);
    on<ForgotPasswordSendCodePressed>(_onSendCodePressed);
  }

  void _onPhoneNumberChanged(
    ForgotPasswordPhoneNumberChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      phoneNumber: event.phoneNumber,
      phoneNumberError: null,
    ));
  }

  Future<void> _onSendCodePressed(
    ForgotPasswordSendCodePressed event,
    Emitter<ForgotPasswordState> emit,
  ) async {
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
        if (exception is ApiException) {
          if (exception.isBadRequest) {
            emit(state.copyWith(
              status: ForgotPasswordPageStatus.failure,
              phoneNumberError: exception.firstMessage,
            ));
          } else if (exception.isNotFound) {
            emit(state.copyWith(
              status: ForgotPasswordPageStatus.failure,
              error: exception.firstMessage,
            ));
          } else {
            emit(state.copyWith(
              status: ForgotPasswordPageStatus.failure,
              error: exception.firstMessage,
            ));
          }
        }
      },
      (_) => emit(state.copyWith(status: ForgotPasswordPageStatus.success)),
    );
  }
}
