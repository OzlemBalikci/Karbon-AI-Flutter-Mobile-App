import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
part 'usefulinfo_state.freezed.dart';

enum UsefulinfoStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
abstract class UsefulinfoState with _$UsefulinfoState {
  const UsefulinfoState._();

  const factory UsefulinfoState({
    @Default(UsefulinfoStatus.initial) UsefulinfoStatus status,
    @Default([]) List<UsefulInfo> infos,
    String? error,
  }) = _UsefulinfoState;

  factory UsefulinfoState.initial() => const UsefulinfoState();
}
