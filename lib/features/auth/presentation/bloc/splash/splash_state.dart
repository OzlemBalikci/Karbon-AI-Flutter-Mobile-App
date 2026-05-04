import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(0.0) double progress,
    String? activeStepLabel,
    @Default(false) bool bootstrapComplete,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState();
}
