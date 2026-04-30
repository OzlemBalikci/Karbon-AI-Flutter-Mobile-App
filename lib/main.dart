import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:karbon/app.dart';
import 'package:karbon/di/di.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:karbon/router/navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/utils/appblocobserver.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:karbon/firebase_options.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:karbon/services/notification_service.dart';

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
  await initializeDateFormatting();
  await configureDependencies();
  await NotificationService.instance.init();

  if (kDebugMode) {
    Bloc.observer = AppBlocObserver();
  }

  final appRouter = AppRouter();

  runApp(
    GlobalBlocProviders(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => KarbonApp(router: appRouter),
      ),
    ),
  );
}
