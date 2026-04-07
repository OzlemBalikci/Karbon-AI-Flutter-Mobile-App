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
    emit(state.copyWith(
        profileStatus: ProfileStatus.loading, profileError: null));
    final result = await _getProfile();
    result.fold(
      (failure) => emit(state.copyWith(
        profileStatus: ProfileStatus.error,
        profileError: failure.toString(),
      )),
      (profile) => emit(state.copyWith(
        profileStatus: ProfileStatus.success,
        profile: profile,
      )),
    );
  }

  void _onTabChanged(TabChanged event, Emitter<ProfileState> emit) {
    emit(state.copyWith(selectedTab: event.index));
    if (event.index == 2 &&
        state.donationHistoryStatus == DonationHistoryStatus.initial) {
      add(const ProfileEvent.fetchDonationHistory());
    }
  }

  Future<void> _onFetchDonationHistory(
      FetchDonationHistory event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        donationHistoryStatus: DonationHistoryStatus.loading,
        donationHistoryError: null));
    final result = await _getDonationHistory();
    result.fold(
      (failure) => emit(state.copyWith(
        donationHistoryStatus: DonationHistoryStatus.error,
        donationHistoryError: failure.toString(),
      )),
      (history) => emit(state.copyWith(
        donationHistoryStatus: DonationHistoryStatus.success,
        donationHistory: history,
      )),
    );
  }

  Future<void> _onDonateTrees(
      DonateTrees event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
        donateStatus: DonateTreesStatus.loading, donateError: null));
    final result = await _donateTrees();
    result.fold(
      (failure) => emit(state.copyWith(
        donateStatus: DonateTreesStatus.error,
        donateError: failure.toString(),
      )),
      (donateResult) => emit(state.copyWith(
        donateStatus: DonateTreesStatus.success,
        donateResult: donateResult,
      )),
    );
  }

  void _onDonateReset(DonateReset event, Emitter<ProfileState> emit) {
    emit(state.copyWith(
      donateStatus: DonateTreesStatus.initial,
      donateResult: null,
    ));
  }
}
