import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_state.dart';

class ResetPasswordSelector<T>
    extends BlocSelector<ResetPasswordCubit, ResetPasswordState, T> {
  const ResetPasswordSelector({
    super.key,
    required super.selector,
    required super.builder,
  });
}

class ResetPasswordStatusSelector
    extends ResetPasswordSelector<ResetPasswordPageStatus> {
  ResetPasswordStatusSelector({
    super.key,
    required super.builder,
  }) : super(
          selector: (state) => state.status,
        );
}
