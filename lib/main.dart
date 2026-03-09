import 'package:flutter/material.dart';
import 'package:karbon/app.dart';
import 'package:karbon/di/di.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/translations.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/utils/appblocobserver.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();
  await configureDependencies();
  await AppTranslations.loadTranslations();

  if (kDebugMode) {
    Bloc.observer = AppBlocObserver();
  }

  runApp(
    GlobalBlocProviders(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => KarbonApp(),
      ),
    ),
  );
}
