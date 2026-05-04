import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/splash/splash_event.dart';
import 'package:karbon/features/auth/presentation/bloc/splash/splash_state.dart';
import 'package:karbon/services/notification_service.dart';

/// Açılışta sırayla lokalleştirilmiş tarih → GetIt kurulum → bildirimler.
/// [AppBootstrapGate] içinde tetiklenir; [runApp] öncesinde GetIt gerektiremezsiniz.
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<SplashBootstrapRequested>(_onBootstrapRequested);
  }

  static const _steps = <({String label, double weight})>[
    (label: 'Tarih formatları yükleniyor', weight: 0.3),
    (label: 'Bağımlılıklar hazırlanıyor', weight: 0.4),
    (label: 'Bildirimler başlatılıyor', weight: 0.3),
  ];

  Future<void> _onBootstrapRequested(
    SplashBootstrapRequested event,
    Emitter<SplashState> emit,
  ) async {
    var accumulated = 0.0;

    await initializeDateFormatting();
    accumulated += _steps[0].weight;
    emit(state.copyWith(
      progress: accumulated.clamp(0.0, 1.0),
      activeStepLabel: _steps[0].label,
    ));

    await configureDependencies();
    accumulated += _steps[1].weight;
    emit(state.copyWith(
      progress: accumulated.clamp(0.0, 1.0),
      activeStepLabel: _steps[1].label,
    ));

    await NotificationService.instance.init();
    accumulated += _steps[2].weight;
    emit(state.copyWith(
      progress: accumulated.clamp(0.0, 1.0),
      activeStepLabel: _steps[2].label,
      bootstrapComplete: true,
    ));
  }
}
