import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/presentation/bloc/customfirstopen/customfirstopen_state.dart';

@injectable
class CustomFirstOpenCubit extends Cubit<CustomFirstOpenState> {
  CustomFirstOpenCubit(this._authLaunchLocal)
      : super(CustomFirstOpenState.initial());

  final AuthLaunchLocal _authLaunchLocal;

  Future<void> completeFirstOpen() async {
    if (state.isLoading) return;
    emit(state.copyWith(status: CustomFirstOpenStatus.loading, error: null));
    try {
      await _authLaunchLocal.setCustomFirstOpenCompleted();
      emit(state.copyWith(status: CustomFirstOpenStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: CustomFirstOpenStatus.failure,
        error: e.toString(),
      ));
    }
  }

  void resetError() {
    if (state.hasError) {
      emit(
        state.copyWith(
          status: CustomFirstOpenStatus.initial,
          error: null,
        ),
      );
    }
  }
}
