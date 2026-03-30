// // forgot_password_bloc.dart
// import 'package:bloc/bloc.dart';
// import 'package:karbon/core/errors/exceptions.dart';
// import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_event.dart';
// import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';
// import 'package:karbon/features/auth/domain/usecases/forgotpassword_usecase.dart';

// class ForgotPasswordBloc
//     extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
//   final ForgotPasswordUseCase _forgotPasswordUseCase;

//   ForgotPasswordBloc({
//     required ForgotPasswordUseCase forgotPasswordUseCase,
//   })  : _forgotPasswordUseCase = forgotPasswordUseCase,
//         super(const ForgotPasswordState()) {
//     on<ForgotPasswordPhoneNumberChanged>(_onPhoneNumberChanged);
//     on<ForgotPasswordSendCodePressed>(_onSendCodePressed);
//   }

//   void _onPhoneNumberChanged(
//     ForgotPasswordPhoneNumberChanged event,
//     Emitter<ForgotPasswordState> emit,
//   ) {
//     emit(state.copyWith(
//       phoneNumber: event.phoneNumber,
//       phoneNumberError: AuthValidators.validatePhoneNumber(event.phoneNumber),
//     ));
//   }

//   Future<void> _onSendCodePressed(
//     ForgotPasswordSendCodePressed event,
//     Emitter<ForgotPasswordState> emit,
//   ) async {
//     // Submit anında tekrar validate et
//     // Kullanıcı hiç dokunmadan direkt butona basabilir
//     final phoneNumberError =
//         AuthValidators.validatePhoneNumber(state.phoneNumber);

//     if (phoneNumberError != null) {
//       emit(state.copyWith(phoneNumberError: phoneNumberError));
//       return;
//     }

//     emit(state.copyWith(
//       status: ForgotPasswordPageStatus.loading,
//       error: null,
//     ));

//     try {
//       await _forgotPasswordUseCase(
//         phoneNumber: state.phoneNumber,
//       );

//       emit(state.copyWith(status: ForgotPasswordPageStatus.success));
//     } on Exception catch (e) {
//       emit(state.copyWith(
//         status: ForgotPasswordPageStatus.failure,
//         error: e.toString(),
//       ));
//     }
//   }
// }
