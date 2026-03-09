import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/presentation/bloc/settings/settings_event.dart';
import 'package:karbon/features/auth/presentation/bloc/settings/settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState()) {
    on<SettingsThemeChanged>(_onThemeChanged);
  }

  void _onThemeChanged(
      SettingsThemeChanged event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(theme: event.theme));
  }
}
