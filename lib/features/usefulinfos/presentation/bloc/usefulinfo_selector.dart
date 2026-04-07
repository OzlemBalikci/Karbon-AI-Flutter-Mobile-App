import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_state.dart';

class UsefulinfoSelector<T>
    extends BlocSelector<UsefulinfoBloc, UsefulinfoState, T> {
  UsefulinfoSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class UsefulinfoStatusSelector extends UsefulinfoSelector<UsefulinfoStatus> {
  UsefulinfoStatusSelector({
    super.key,
    required Widget Function() onLoading,
    required Widget Function(String error) onError,
    required Widget Function() onSuccess,
    Widget Function()? onInitial,
  }) : super(
          selector: (state) => state.status,
          builder: (status) => switch (status) {
            UsefulinfoStatus.initial =>
              onInitial?.call() ?? const SizedBox.shrink(),
            UsefulinfoStatus.loading => onLoading(),
            UsefulinfoStatus.error =>
              BlocSelector<UsefulinfoBloc, UsefulinfoState, String?>(
                selector: (state) => state.error,
                builder: (_, error) => onError(error ?? 'Bir hata oluştu'),
              ),
            UsefulinfoStatus.success => onSuccess(),
          },
        );
}

class UsefulinfoListSelector
    extends UsefulinfoSelector<List<UsefulInfoEntity>> {
  UsefulinfoListSelector({
    super.key,
    required Widget Function(List<UsefulInfoEntity> infos) builder,
  }) : super(
          selector: (state) => state.infos,
          builder: builder,
        );
}

class UsefulinfoSelectedSelector extends UsefulinfoSelector<UsefulInfoEntity?> {
  UsefulinfoSelectedSelector({
    super.key,
    required Widget Function(UsefulInfoEntity info) onSelected,
    Widget Function()? onEmpty,
  }) : super(
          selector: (state) => state.selectedInfo,
          builder: (selected) => selected != null
              ? onSelected(selected)
              : onEmpty?.call() ?? const SizedBox.shrink(),
        );
}

class UsefulinfoErrorSelector extends UsefulinfoSelector<String?> {
  UsefulinfoErrorSelector({
    super.key,
    required Widget Function(String error) builder,
  }) : super(
          selector: (state) => state.error,
          builder: (error) => builder(error ?? 'Bir hata oluştu'),
        );
}
