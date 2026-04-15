import 'package:freezed_annotation/freezed_annotation.dart';

part 'customfirstopen_state.freezed.dart';

enum CustomFirstOpenStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
abstract class CustomFirstOpenState with _$CustomFirstOpenState {
  const CustomFirstOpenState._();

  const factory CustomFirstOpenState({
    @Default(CustomFirstOpenStatus.initial) CustomFirstOpenStatus status,
    String? error,
  }) = _CustomFirstOpenState;

  factory CustomFirstOpenState.initial() => const CustomFirstOpenState();
}
