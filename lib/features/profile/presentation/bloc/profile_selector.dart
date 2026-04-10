import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';

class ProfileSelector<T> extends BlocSelector<ProfileBloc, ProfileState, T> {
  ProfileSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class ProfileAsyncStatusSelector<T> extends ProfileSelector<AsyncStatus> {
  ProfileAsyncStatusSelector({
    super.key,
    required AsyncStatus Function(ProfileState) statusSelector,
    required String? Function(ProfileState) errorSelector,
    required T? Function(ProfileState) dataSelector,
    required Widget Function() onLoading,
    required Widget Function(String error) onError,
    required Widget Function(T data) onSuccess,
    Widget Function()? onInitial,
  }) : super(
          selector: statusSelector,
          builder: (status) => switch (status) {
            AsyncStatus.initial => onInitial?.call() ?? const SizedBox.shrink(),
            AsyncStatus.loading => onLoading(),
            AsyncStatus.error =>
              BlocSelector<ProfileBloc, ProfileState, String?>(
                selector: errorSelector,
                builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
              ),
            AsyncStatus.success => BlocSelector<ProfileBloc, ProfileState, T?>(
                selector: dataSelector,
                builder: (_, data) {
                  if (data == null) return const SizedBox.shrink();
                  return onSuccess(data);
                },
              ),
          },
        );
}

class ProfileTabSelector extends ProfileSelector<int> {
  ProfileTabSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.selectedTab);
}
