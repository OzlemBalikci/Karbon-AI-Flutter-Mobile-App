import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/di/di.config.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:karbon/features/auth/presentation/bloc/settings/settings_bloc.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDependencies() async {
  await getIt.reset();
  await getIt.init();
}

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio();

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
