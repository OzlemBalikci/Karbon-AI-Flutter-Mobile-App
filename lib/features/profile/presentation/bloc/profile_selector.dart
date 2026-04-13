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

class ProfileAsyncStatusSelector<T> extends StatelessWidget {
  const ProfileAsyncStatusSelector({
    super.key,
    required this.statusSelector,
    required this.errorSelector,
    required this.dataSelector,
    required this.onLoading,
    required this.onError,
    required this.onSuccess,
    this.onInitial,
  });

  final AsyncStatus Function(ProfileState) statusSelector;
  final String? Function(ProfileState) errorSelector;
  final T? Function(ProfileState) dataSelector;
  final Widget Function() onLoading;
  final Widget Function(String error) onError;
  final Widget Function(T data) onSuccess;
  final Widget Function()? onInitial;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProfileBloc, ProfileState, AsyncStatus>(
      selector: statusSelector,
      builder: (context, status) {
        switch (status) {
          case AsyncStatus.initial:
            return onInitial?.call() ?? const SizedBox.shrink();
          case AsyncStatus.loading:
            return onLoading();
          case AsyncStatus.error:
            return BlocSelector<ProfileBloc, ProfileState, String?>(
              selector: errorSelector,
              builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
            );
          case AsyncStatus.success:
            return BlocSelector<ProfileBloc, ProfileState, T?>(
              selector: dataSelector,
              builder: (_, data) {
                if (data == null) return const SizedBox.shrink();
                return onSuccess(data);
              },
            );
        }
      },
    );
  }
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
