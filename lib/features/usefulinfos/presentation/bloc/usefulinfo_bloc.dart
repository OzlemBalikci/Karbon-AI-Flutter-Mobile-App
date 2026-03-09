import 'package:injectable/injectable.dart';
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_event.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class UsefulinfoBloc extends Bloc<UsefulinfoEvent, UsefulinfoState> {
  UsefulinfoBloc(this._repository) : super(UsefulinfoState.initial()) {
    on<UsefulinfoLoadRequested>(_onLoadRequested);
  }

  final IUsefulinfoRepository _repository;

  Future<void> _onLoadRequested(
    UsefulinfoLoadRequested event,
    Emitter<UsefulinfoState> emit,
  ) async {
    emit(state.copyWith(status: UsefulinfoStatus.loading, error: null));

    try {
      final infos = await _repository.getUsefulInfos();
      infos.sort((a, b) => a.order.compareTo(b.order));
      emit(state.copyWith(status: UsefulinfoStatus.success, infos: infos));
    } on Exception catch (e) {
      emit(state.copyWith(status: UsefulinfoStatus.error, error: e.toString()));
    }
  }
}
