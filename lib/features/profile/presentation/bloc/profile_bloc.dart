import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_event.dart';
import 'package:karbon/features/profile/domain/usecases/donate_trees_usecase.dart';
import 'package:karbon/features/profile/domain/usecases/get_donation_usecase.dart';
import 'package:karbon/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._getProfile,
    this._getDonationHistory,
    this._donateTrees,
  ) : super(ProfileState.initial()) {
    on<FetchProfile>(_onFetchProfile);
    on<TabChanged>(_onTabChanged);
    on<FetchDonationHistory>(_onFetchDonationHistory);
    on<DonateTrees>(_onDonateTrees);
    on<DonateReset>(_onDonateReset);
  }

  final GetProfileUseCase _getProfile;
  final GetDonationsUsecase _getDonationHistory;
  final DonateTreesUsecase _donateTrees;

  Future<void> _onFetchProfile(
      FetchProfile event, Emitter<ProfileState> emit) async {
    emit(
        state.copyWith(profileStatus: AsyncStatus.loading, profileError: null));
    final result = await _getProfile();
    result.fold(
      (failure) => emit(state.copyWith(
        profileStatus: AsyncStatus.error,
        profileError: failure.toString(),
      )),
      (profile) => emit(state.copyWith(
        profileStatus: AsyncStatus.success,
        profile: profile,
      )),
    );
  }

  Future<void> _onTabChanged(
      TabChanged event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(selectedTab: event.index));
    if (event.index == 2 &&
        state.donationHistoryStatus == AsyncStatus.initial) {
      await _onFetchDonationHistory(const FetchDonationHistory(), emit);
    }
  }

  Future<void> _onFetchDonationHistory(
      FetchDonationHistory event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        donationHistoryStatus: AsyncStatus.loading,
        donationHistoryError: null));
    final result = await _getDonationHistory();
    result.fold(
      (failure) => emit(state.copyWith(
        donationHistoryStatus: AsyncStatus.error,
        donationHistoryError: failure.toString(),
      )),
      (history) => emit(state.copyWith(
        donationHistoryStatus: AsyncStatus.success,
        donationHistory: history,
      )),
    );
  }

  Future<void> _onDonateTrees(
      DonateTrees event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(donateStatus: AsyncStatus.loading, donateError: null));
    final result = await _donateTrees();
    result.fold(
      (failure) => emit(state.copyWith(
        donateStatus: AsyncStatus.error,
        donateError: failure.toString(),
      )),
      (donateResult) => emit(state.copyWith(
        donateStatus: AsyncStatus.success,
        donateResult: donateResult,
      )),
    );
  }

  void _onDonateReset(DonateReset event, Emitter<ProfileState> emit) {
    emit(state.copyWith(
      donateStatus: AsyncStatus.initial,
      donateResult: null,
    ));
  }
}
