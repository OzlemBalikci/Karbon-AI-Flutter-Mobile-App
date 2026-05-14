import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/app.dart';
import 'package:karbon/core/theme/themes.light.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/splash/splash_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/splash/splash_event.dart';
import 'package:karbon/features/auth/presentation/pages/splash/widgets/splash_background.dart';
import 'package:karbon/router/navigation.dart';

class AppBootstrapGate extends StatefulWidget {
  const AppBootstrapGate({super.key});

  @override
  State<AppBootstrapGate> createState() => _AppBootstrapGateState();
}

class _AppBootstrapGateState extends State<AppBootstrapGate> {
  late final SplashBloc _splashBloc;
  AppRouter? _router;

  bool _authDone = false;
  bool _minTimeDone = false;

  static const _minSplashDuration = Duration(seconds: 4);

  bool get _readyToLaunch => _authDone && _minTimeDone;

  @override
  void initState() {
    super.initState();
    _splashBloc = SplashBloc()..add(const SplashEvent.bootstrapRequested());
    _splashBloc.stream.listen((state) {
      if (state.bootstrapComplete) _runAuthCheck();
    });
    Future.delayed(_minSplashDuration, () {
      if (mounted) setState(() => _minTimeDone = true);
    });
  }

  Future<void> _runAuthCheck() async {
    final authBloc = getIt<AuthBloc>();
    authBloc.add(const AuthEvent.appStarted());
    await for (final state in authBloc.stream) {
      if (!state.isSessionChecking) {
        if (mounted) setState(() => _authDone = true);
        break;
      }
    }
  }

  @override
  void dispose() {
    _splashBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        if (!_readyToLaunch) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: const LightAppTheme().themeData,
            home: const SplashBackground(showLoading: true),
          );
        }
        _router ??= AppRouter();
        return GlobalBlocProviders(
          child: KarbonApp(router: _router!),
        );
      },
    );
  }
}
