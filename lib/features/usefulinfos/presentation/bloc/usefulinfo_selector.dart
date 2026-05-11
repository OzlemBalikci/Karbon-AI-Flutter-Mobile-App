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
  UsefulinfoStatusSelector(Widget Function(UsefulinfoStatus) builder,
      {super.key})
      : super(
          selector: (state) => state.status,
          builder: builder,
        );
}

class UsefulinfoListSelector
    extends UsefulinfoSelector<List<UsefulInfoEntity>> {
  UsefulinfoListSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.infos);
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
