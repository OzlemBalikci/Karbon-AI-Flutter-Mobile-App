import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_event.dart';
import 'package:karbon/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._getProfileUseCase) : super(ProfileState.initial()) {
    on<ProfileLoadRequested>(_onLoadRequested);
    on<ProfileTabChanged>(_onTabChanged);
  }

  final GetProfileUseCase _getProfileUseCase;

  Future<void> _onLoadRequested(
      ProfileLoadRequested event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(loadStatus: ProfileLoadStatus.loading, error: null));
    final result = await _getProfileUseCase();
    result.fold(
      (e) => emit(
        state.copyWith(
          loadStatus: ProfileLoadStatus.failure,
          error: e.toString(),
        ),
      ),
      (profile) => emit(
        state.copyWith(
          loadStatus: ProfileLoadStatus.success,
          profile: profile,
        ),
      ),
    );
  }

  void _onTabChanged(ProfileTabChanged event, Emitter<ProfileState> emit) {
    emit(state.copyWith(selectedTabIndex: event.index));
  }
}
