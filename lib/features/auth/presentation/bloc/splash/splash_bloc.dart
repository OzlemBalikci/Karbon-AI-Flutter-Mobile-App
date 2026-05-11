import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/splash/splash_event.dart';
import 'package:karbon/features/auth/presentation/bloc/splash/splash_state.dart';
import 'package:karbon/services/notification_service.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<SplashBootstrapRequested>(_onBootstrapRequested);
  }

  Future<void> _onBootstrapRequested(
    SplashBootstrapRequested event,
    Emitter<SplashState> emit,
  ) async {
    await initializeDateFormatting();
    await configureDependencies();
    await NotificationService.instance.init();
    emit(state.copyWith(bootstrapComplete: true));
  }
}
