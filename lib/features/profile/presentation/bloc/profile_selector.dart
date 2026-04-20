import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';

typedef ProfileAsyncSlice<T> = ({AsyncStatus status, String? error, T? data});

class ProfileSelector<T> extends BlocSelector<ProfileBloc, ProfileState, T> {
  ProfileSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class ProfileAsyncSelector<T> extends ProfileSelector<ProfileAsyncSlice<T>> {
  ProfileAsyncSelector({
    super.key,
    required AsyncStatus Function(ProfileState) statusSelector,
    required String? Function(ProfileState) errorSelector,
    required T? Function(ProfileState) dataSelector,
    required Widget Function(ProfileAsyncSlice<T> slice) builder,
  }) : super(
          selector: (s) => (
            status: statusSelector(s),
            error: errorSelector(s),
            data: dataSelector(s),
          ),
          builder: builder,
        );
}

class ProfileUserAsyncSelector extends ProfileAsyncSelector<UserProfileEntity> {
  ProfileUserAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.profileStatus,
          errorSelector: (s) => s.profileError,
          dataSelector: (s) => s.profile,
        );
}

class ProfileDonationHistoryAsyncSelector
    extends ProfileAsyncSelector<DonationHistoryEntity> {
  ProfileDonationHistoryAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.donationHistoryStatus,
          errorSelector: (s) => s.donationHistoryError,
          dataSelector: (s) => s.donationHistory,
        );
}

class ProfileDonateAsyncSelector
    extends ProfileAsyncSelector<DonateTreesResultEntity> {
  ProfileDonateAsyncSelector({
    super.key,
    required super.builder,
  }) : super(
          statusSelector: (s) => s.donateStatus,
          errorSelector: (s) => s.donateError,
          dataSelector: (s) => s.donateResult,
        );
}

class ProfileTabSelector extends ProfileSelector<int> {
  ProfileTabSelector({
    super.key,
    required Widget Function(int index) builder,
  }) : super(
          selector: (state) => state.selectedTab,
          builder: builder,
        );
}
