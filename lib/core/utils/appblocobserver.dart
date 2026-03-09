import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_state.dart';

class AppBlocObserver extends BlocObserver {
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 80,
    ),
  );

  static const String _tag = '[Karbon-BLoC]';

  String _stateSummary(dynamic state) {
    if (state is! CarbonCalculateState) {
      return state.toString();
    }
    final phase = state.phase;
    final phaseStr = switch (phase) {
      CarbonInfoPhase() => 'info',
      CarbonQuestionPhase(:final questionIndex) => 'question[$questionIndex]',
      CarbonResultPhase() => 'result',
    };
    final answersStr =
        state.answers.entries.map((e) => '${e.key}=${e.value}').join(', ');
    return 'phase=$phaseStr | answers={$answersStr}';
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _logger.i('$_tag CREATE: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.i('$_tag EVENT: ${bloc.runtimeType} -> $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.i(
      '$_tag CHANGE: ${bloc.runtimeType}\n'
      '  Current → ${_stateSummary(change.currentState)}\n'
      '  Next    → ${_stateSummary(change.nextState)}',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e(
      '$_tag ERROR: ${bloc.runtimeType}',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logger.i('$_tag CLOSE: ${bloc.runtimeType}');
  }
}
