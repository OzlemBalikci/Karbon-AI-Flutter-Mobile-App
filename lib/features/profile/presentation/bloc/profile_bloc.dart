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
        profileStatus: AsyncStatus.failure,
        profileError: failure.toString(),
      )),
      (profile) => emit(state.copyWith(
        profileStatus: AsyncStatus.success,
        profile: profile,
      )),
    );
  }

  void _onTabChanged(TabChanged event, Emitter<ProfileState> emit) {
    final previousTab = state.selectedTab;
    emit(state.copyWith(selectedTab: event.index));
    final enteredDonationsFromElsewhere = event.index == 2 && previousTab != 2;
    if (enteredDonationsFromElsewhere) {
      final status = state.donationHistoryStatus;
      if (status == AsyncStatus.initial || status == AsyncStatus.failure) {
        add(const ProfileEvent.fetchDonationHistory());
      }
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
        donationHistoryStatus: AsyncStatus.failure,
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
        donateStatus: AsyncStatus.failure,
        donateError: failure.toString(),
      )),
      (donateResult) {
        emit(state.copyWith(
          donateStatus: AsyncStatus.success,
          donateResult: donateResult,
        ));
        add(const ProfileEvent.fetchDonationHistory());
      },
    );
  }

  void _onDonateReset(DonateReset event, Emitter<ProfileState> emit) {
    emit(state.copyWith(
      donateStatus: AsyncStatus.initial,
      donateResult: null,
    ));
    add(const ProfileEvent.fetchProfile());
  }
}
