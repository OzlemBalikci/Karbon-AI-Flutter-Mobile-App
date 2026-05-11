import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:karbon/features/auth/presentation/pages/splash/widgets/splash_background.dart';
import 'package:karbon/router/navigation.dart';

export 'widgets/splash_background.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final authBloc = context.read<AuthBloc>();
      if (!authBloc.state.isSessionChecking) {
        _navigateForState(context, authBloc.state);
      } else {
        authBloc.add(const AuthEvent.appStarted());
      }
    });
  }

  Future<void> _navigateForState(BuildContext context, AuthState state) async {
    await state.when(
      sessionChecking: () async {},
      authenticated: (_) async {
        if (!context.mounted) return;
        context.router.replaceAll([const HomeShellRoute()]);
      },
      unauthenticated: () async {
        final done =
            await getIt<AuthLaunchLocal>().isCustomFirstOpenCompleted();
        if (!context.mounted) return;
        context.router.replaceAll([
          done ? const LoginRoute() : const CustomFirstOpenRoute(),
        ]);
      },
      authFailure: (reason, failureType, code) async {
        if (!context.mounted) return;
        context.router.replaceAll([const LoginRoute()]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.isSessionChecking && !current.isSessionChecking,
      listener: (context, state) => _navigateForState(context, state),
      child: const SplashBackground(),
    );
  }
}
