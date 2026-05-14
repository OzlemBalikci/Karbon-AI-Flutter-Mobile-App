import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:karbon/app_bootstrap_gate.dart';
import 'package:karbon/core/utils/appblocobserver.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:karbon/firebase_options.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  if (kDebugMode) {
    Bloc.observer = AppBlocObserver();
  }

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const AppBootstrapGate(),
    ),
  );
}
