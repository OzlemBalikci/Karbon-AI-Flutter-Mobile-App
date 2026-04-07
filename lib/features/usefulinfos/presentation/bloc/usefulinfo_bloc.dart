import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/domain/usecases/get_useful_infos_usecase.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_event.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_state.dart';

@injectable
class UsefulinfoBloc extends Bloc<UsefulinfoEvent, UsefulinfoState> {
  UsefulinfoBloc(this._getUsefulInfosUseCase)
      : super(UsefulinfoState.initial()) {
    on<FetchInfos>(_onFetchInfos);
    on<InfoSelected>(_onInfoSelected);
  }

  final GetUsefulInfosUseCase _getUsefulInfosUseCase;

  Future<void> _onFetchInfos(
    FetchInfos event,
    Emitter<UsefulinfoState> emit,
  ) async {
    emit(state.copyWith(status: UsefulinfoStatus.loading, error: null));

    final result = await _getUsefulInfosUseCase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: UsefulinfoStatus.error,
          error: failure.toString(),
        ),
      ),
      (infos) {
        final sorted = List<UsefulInfoEntity>.from(infos)
          ..sort((a, b) => a.displayOrder.compareTo(b.displayOrder));
        emit(
          state.copyWith(
            status: UsefulinfoStatus.success,
            infos: sorted,
            selectedInfo: null,
          ),
        );
      },
    );
  }

  void _onInfoSelected(
    InfoSelected event,
    Emitter<UsefulinfoState> emit,
  ) {
    for (final info in state.infos) {
      if (info.id == event.id) {
        emit(state.copyWith(selectedInfo: info));
        return;
      }
    }
    emit(state.copyWith(selectedInfo: null));
  }
}
