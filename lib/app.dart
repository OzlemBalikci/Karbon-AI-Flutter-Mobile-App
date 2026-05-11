import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:karbon/features/auth/presentation/bloc/settings/settings_selector.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/core/theme/themes.dart';
import 'package:karbon/l10n/app_localizations.dart';

class KarbonApp extends StatefulWidget {
  final AppRouter router;

  const KarbonApp({required this.router, super.key});

  @override
  State<KarbonApp> createState() => _KarbonAppState();
}

class _KarbonAppState extends State<KarbonApp> {
  /// router.config() her rebuild'de yeni delegate oluşturmasın diye önbelleklenir.
  late final RouterConfig<Object> _routerConfig;

  @override
  void initState() {
    super.initState();
    _routerConfig = widget.router.config();
  }

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
          theme: theme.themeData,
          routerConfig: _routerConfig,
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
