import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:karbon/features/auth/presentation/bloc/settings/settings_selector.dart';
import 'package:karbon/router/navigation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:karbon/core/theme/themes.dart';
import 'package:karbon/l10n/app_localizations.dart';

class KarbonApp extends StatelessWidget {
  //final AppRouter _router = AppRouter();
  final AppRouter router;
  KarbonApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
      maximumSize: const Size(400, 800),
      backgroundColor: Colors.black12,
      enabled: MediaQuery.sizeOf(context).shortestSide > 600,
      builder: (_) => SettingsSelector<AppTheme>(
        selector: (state) => state.theme,
        builder: (theme) => MaterialApp.router(
          title: 'FlutterKarbon',
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: theme.themeData,
          routerConfig: router.config(),
          scrollBehavior: AppScrollBehavior(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        ),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
