import 'dart:async';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:karbon/core/networks/dio_interceptor.dart';
import 'package:karbon/core/networks/token_refresh_interceptor.dart';
import 'package:karbon/di/di.config.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/settings/settings_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDependencies() async {
  await getIt.reset();
  await getIt.init();
}

@module
abstract class RegisterModule {
  /// Token depolama — [AuthLocalImpl] ile auth.md Secure Storage akışına uygun.
  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @singleton
  Dio dio(AuthLocal authLocal, CookieJar cookieJar) {
    final client = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    client.interceptors.add(CookieManager(cookieJar));
    client.interceptors.add(
      TokenRefreshInterceptor(
        client,
        authLocal,
        onSessionExpired: () {
          try {
            getIt<AuthBloc>().add(const AuthEvent.tokenExpired());
          } catch (_) {}
        },
      ),
    );
    client.interceptors.add(AppInterceptor());
    return client;
  }

  @preResolve
  Future<CookieJar> get cookieJar async {
    final dir = await getApplicationSupportDirectory();
    return PersistCookieJar(
      storage: FileStorage('${dir.path}/.cookies'),
    );
  }

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

class GlobalBlocProviders extends StatelessWidget {
  final Widget child;

  const GlobalBlocProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(
          create: (context) => getIt.get<SettingsBloc>(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => getIt.get<AuthBloc>(),
        ),
      ],
      child: child,
    );
  }
}
