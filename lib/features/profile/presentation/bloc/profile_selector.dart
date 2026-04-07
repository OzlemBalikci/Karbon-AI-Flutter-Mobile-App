import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

class ProfileSelector<T> extends BlocSelector<ProfileBloc, ProfileState, T> {
  ProfileSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class ProfileStatusSelector extends ProfileSelector<ProfileStatus> {
  ProfileStatusSelector({
    super.key,
    required Widget Function() onLoading,
    required Widget Function(String error) onError,
    required Widget Function(UserProfileEntity profile) onSuccess,
    Widget Function()? onInitial,
  }) : super(
          selector: (state) => state.profileStatus,
          builder: (status) => switch (status) {
            ProfileStatus.initial =>
              onInitial?.call() ?? const SizedBox.shrink(),
            ProfileStatus.loading => onLoading(),
            ProfileStatus.error =>
              BlocSelector<ProfileBloc, ProfileState, String?>(
                selector: (state) => state.profileError,
                builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
              ),
            ProfileStatus.success =>
              BlocSelector<ProfileBloc, ProfileState, UserProfileEntity?>(
                selector: (state) => state.profile,
                builder: (_, profile) => onSuccess(profile!),
              ),
          },
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

class DonationHistoryStatusSelector
    extends ProfileSelector<DonationHistoryStatus> {
  DonationHistoryStatusSelector({
    super.key,
    required Widget Function() onLoading,
    required Widget Function(String error) onError,
    required Widget Function(DonationHistoryEntity history) onSuccess,
    Widget Function()? onInitial,
  }) : super(
          selector: (state) => state.donationHistoryStatus,
          builder: (status) => switch (status) {
            DonationHistoryStatus.initial =>
              onInitial?.call() ?? const SizedBox.shrink(),
            DonationHistoryStatus.loading => onLoading(),
            DonationHistoryStatus.error =>
              BlocSelector<ProfileBloc, ProfileState, String?>(
                selector: (state) => state.donationHistoryError,
                builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
              ),
            DonationHistoryStatus.success =>
              BlocSelector<ProfileBloc, ProfileState, DonationHistoryEntity?>(
                selector: (state) => state.donationHistory,
                builder: (_, history) => onSuccess(history!),
              ),
          },
        );
}

class DonateTreesStatusSelector extends ProfileSelector<DonateTreesStatus> {
  DonateTreesStatusSelector({
    super.key,
    required Widget Function() onLoading,
    required Widget Function(String error) onError,
    required Widget Function(DonateTreesResultEntity result) onSuccess,
    Widget Function()? onInitial,
  }) : super(
          selector: (state) => state.donateStatus,
          builder: (status) => switch (status) {
            DonateTreesStatus.initial =>
              onInitial?.call() ?? const SizedBox.shrink(),
            DonateTreesStatus.loading => onLoading(),
            DonateTreesStatus.error =>
              BlocSelector<ProfileBloc, ProfileState, String?>(
                selector: (state) => state.donateError,
                builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
              ),
            DonateTreesStatus.success =>
              BlocSelector<ProfileBloc, ProfileState, DonateTreesResultEntity?>(
                selector: (state) => state.donateResult,
                builder: (_, result) => onSuccess(result!),
              ),
          },
        );
}
